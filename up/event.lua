local setmetatable = setmetatable
local ipairs = ipairs
local pairs = pairs
local table = table
local unpack = unpack
local up_game = up.game

local cmd_parmlist = {
    [1] = {'命令-移动',{'__point','point'}},
    [2] = {'命令-攻击移动',{'__point','point'}},
    [3] = {'命令-攻击',{'__target_unit','unit'},{'__destructible_id','des'}},
    [4] = {'命令-巡逻',{'__point','point'}},
    [5] = {'命令-停止'},
    [6] = {'命令-防守',{'__point','point'}},
    [8] = {'命令-拾取物品',{'__item_id','item'}},
    [9] = {'命令-丢弃物品',{'__item_id','item'}},
    [10] = {'命令-给予物品',{'__item_id','item'},{'__target_unit','unit'}},
    [11] = {'命令-跟随',{'__target_unit','unit'}},
    [12] = {'命令-沿路径移动'},
}

local enum_f = {
    player = function (r_id) return up.player(r_id) end,
    unit = function(u) return up.actor_unit(u) end,
    item = function(u) return up.actor_item(u) end,
    skill = function (u) return up.actor_skill(u) end,
    point = function (u) return up.actor_point(u) end,
    buff = function(u) return up.actor_buff(u) end,
    group = function (u)
        local group = {}
        for index, value in Python.enumerate(u) do
            local a = up.actor_unit(value)
            table.insert(group,a)
        end
        return group
    end,
    des = function (u)
        return up.actor_destructable(u)
    end

}

--会对第一个参数对象发起事件
local event_list = {
    {EVENT.GAME_INIT,                   '游戏-初始化'},
    {EVENT.LOADING_END,                 '游戏-开始'},
    {EVENT.UNIT_ATTR_CHANGE,            '单位-属性变化'},
    {EVENT.UNIT_BORN,                   '单位-创建',{{'__unit_id','unit'}}},
    {EVENT.UNIT_DIE,                    '单位-死亡',{{'__target_unit','unit'},{'__source_unit','unit'}},true},
    {EVENT.REVIVE_UNIT,                 '单位-复活',{{'__unit_id','unit'}},true},
    {EVENT.UNIT_REMOVE,                 '单位-删除',{{'__unit_id','unit'},'__unit_id'}},
    {EVENT.KILL_UNIT,                   '单位-击杀',{{'__source_unit','unit'}},true},
    {EVENT.UNIT_ADD_ITEM,               '单位-获得物品',{{'__unit_id','unit'},{'__item_id','item'},'__item_no'}},
    {EVENT.UNIT_REMOVE_ITEM,            '单位-失去物品',{{'__unit_id','unit'},{'__item_id','item'},'__item_no'}},
    {EVENT.UNIT_USE_ITEM,               '单位-使用物品',{{'__unit_id','unit'},{'__item_id','item'},'__item_no'},true},
    {EVENT.SELECT_UNIT,                 '单位-选中',{{'__role_id','player'},{'__unit_id','unit'}}},
    {EVENT.SELECT_UNIT_GROUP,           '单位-多选',{{'__role_id','player'},{'__unit_group_id_list','group'},'__team_id'}},
    {EVENT.UNIT_BE_HURT,                '单位-受到伤害',{{'__target_unit','unit'},{'__source_unit','unit'},{'__ability','skill'},'__damage','__damage_type'},true},
    {EVENT.UNIT_HURT_OTHER,             '单位-造成伤害',{{'__source_unit','unit'},{'__target_unit','unit'},{'__ability','skill'},'__damage','__damage_type'}},
    {EVENT.UNIT_ON_COMMAND,             '单位-收到指令',{{'__unit_id','unit'},'__cmd_type'}},
    {EVENT.UPGRADE_UNIT,                '单位-升级',{{'__unit_id','unit'}}},
    {EVENT.UNIT_END_NAV_EVENT,          '单位-停止寻路',{{'__unit_id','unit'}}},
    {EVENT.UNIT_START_NAV_EVENT,        '单位-开始寻路',{{'__unit_id','unit'}}},
    {EVENT.UNIT_EXIT_BATTLE,            '单位-脱离战斗',{{'__unit_id','unit'}},true},
    {EVENT.UNIT_ON_ADD_EXP,             '单位-获得经验',{{'__unit_id','unit'}},true},
    {EVENT.AREA_ENTER,                  '单位-进入区域'},
    {EVENT.ABILITY_BUILD_FINISH,        '单位-建造',{{'__unit_id','unit'},{'__build_unit_id','unit'}}},
    {EVENT.ROLE_RESOURCE_CHANGED,       '玩家-资源变化',{{'__role_id','player'},'__res_key'}},
    {EVENT.ROLE_TECH_CHANGED,           '玩家-科技变化',{{'__role_id','player'}}},
    {EVENT.START_SKILL_POINTER,         '玩家-打开技能指示器',{{'__role_id','player'},{'__unit_id','unit'},'__ability_type','__ability_index'}},
    {EVENT.STOP_SKILL_POINTER,          '玩家-关闭技能指示器',{{'__role_id','player'},{'__unit_id','unit'},'__ability_type','__ability_index'}},
    {EVENT.CHAT_SEND_GM,                '玩家-发送消息',{{'__role_id','player'},'__str1'}},
    {EVENT.SELECT_ITEM,                 '物品-选中',{{'__role_id','player'},{'__item_id','item'}}},
    {EVENT.ABILITY_PLUS_POINT,          '技能-升级',{{'__ability','skill'}}},
    {EVENT.ABILITY_OBTAIN,              '技能-获得',{{'__ability','skill'}}},
    {EVENT.ABILITY_LOSE,                '技能-失去',{{'__ability','skill'}}},
    {EVENT.ABILITY_SWITCH,              '技能-替换',{{'__ability','skill'}}},
    {EVENT.ABILITY_ATTR_CHANGED,        '技能-属性变化',{{'__ability','skill'}}},
    {EVENT.ABILITY_CS_START,            '技能-开始施法',{{'__ability','skill'}}},
    {EVENT.ABILITY_PS_START,            '技能-前摇开始',{{'__ability','skill'}}},
    {EVENT.ABILITY_PS_END,              '技能-施法引导',{{'__ability','skill'}}},
    {EVENT.ABILITY_CST_END,             '技能-施法完成',{{'__ability','skill'}}},
    {EVENT.ABILITY_END,                 '技能-施法停止',{{'__ability','skill'}}},
    {EVENT.MODIFIER_CYCLE_TRIGGER,      '魔法效果-循环周期到期',{{'__modifier','buff'},{'__owner_unit','unit'},{'__from_unit_id','unit'}}},
    {EVENT.SELECT_DEST,                 '可破坏物-选中',{{'__role_id','player'},{'__destructible_id','des'}}},
    {{EVENT.MOUSE_KEY_DOWN_EVENT,240},  '鼠标-左键按下',{{'__role_id','player'},{'__pointing_world_pos','point'}}},
    {{EVENT.MOUSE_KEY_DOWN_EVENT,241},  '鼠标-右键按下',{{'__role_id','player'},{'__pointing_world_pos','point'}}},
    {{EVENT.MOUSE_KEY_UP_EVENT,240},    '鼠标-左键松开',{{'__role_id','player'},{'__pointing_world_pos','point'}}},
    {{EVENT.MOUSE_KEY_UP_EVENT,241},    '鼠标-右键松开',{{'__role_id','player'},{'__pointing_world_pos','point'}}},
    {EVENT.MOUSE_MOVE_EVENT,            '鼠标-移动',{{'__role_id','player'},{'__pointing_world_pos','point'}}},
    {EVENT.KEYBOARD_KEY_UP_EVENT,       '键盘-抬起',{{'__role_id','player'},'__current_key'}},
    {EVENT.KEYBOARD_KEY_DOWN_EVENT,     '键盘-按下',{{'__role_id','player'},'__current_key'}},
}

--注册UI事件
for _,v in pairs(UI_EVENT_LIST) do
    --print('init event',v)
    local a = {{EVENT.TRIGGER_COMPONENT_EVENT,v},'UI-事件',{{'__role_id','player'},'__ui_event_name','__comp_name'}}
    table.insert(event_list,a)
end
for i = 1,255 do
    local a = {{EVENT.KEYBOARD_KEY_DOWN_EVENT,i},'键盘-按下',{{'__role_id','player'},'__current_key'}}
    table.insert(event_list,a)
    local a = {{EVENT.KEYBOARD_KEY_UP_EVENT,i},'键盘-抬起',{{'__role_id','player'},'__current_key'}}
    table.insert(event_list,a)
end

local function cmd_event(tbl,cmd,data)
    --根据cmd不同，添加不同的事件参数
    local name = cmd[1]
    table.insert(tbl,name)
    if #cmd > 1 then
        for i=2,#cmd do
            if data[cmd[i][1]] then
                table.insert(tbl,enum_f[cmd[i][2]](data[cmd[i][1]]))
            end
        end
    end
end

local n = 0
for _, event in ipairs(event_list) do
    --up.print('bbb')
    local trg = new_global_trigger(100000+n, event[2], event[1], true)
    n = n+1
    -- if event[5] == 'AREA' then
    --     trg.event.target_type = "Area"
    --     trg.event.get_target = function(trigger, actor)
    --         return gameapi.get_rec_area_by_res_id(event[6])
    --     end
    -- end
    trg.on_event = function(trigger,event_name,actor,data)
        local tbl = {}
        if event[3] then
            for value_id,name in pairs (event[3]) do
                if type(name) == 'table' then
                    if data[name[1]] then
                        tbl[value_id] = enum_f[name[2]](data[name[1]])
                    else
                        tbl[value_id] = nil
                    end
                else
                    if data[name] then
                        if name == '__cmd_type' then
                            if cmd_parmlist[data[name]] then
                                cmd_event(tbl,cmd_parmlist[data[name]],data)
                            end
                        else
                            tbl[value_id] = data[name]
                        end
                    else
                        tbl[value_id] = nil
                    end
                end
            end
        end
        if tbl[1] then
            if event[4] then
                tbl[1]:event_notify(event[2], unpack(tbl))
                return
            end
        end
        -- if event[2] == '单位-死亡' then
        --     up.print('game over',tbl[1]:get_name())
        -- end
        up.game:event_notify(event[2], unpack(tbl))
    end
end



function up.event_dispatch(obj, name, ...)
    local events = obj._events
    if not events then
        return
    end
    local event = events[name]
    if not event then
        return
    end
    for i = #event, 1, -1 do
        local res, arg = event[i](...)
        if res ~= nil then
            return res, arg
        end
    end
end

function up.event_notify(obj, name, ...)
    local events = obj._events
    if not events then
        return
    end
    local event = events[name]
    if not event then
        return
    end
    for i = #event, 1, -1 do
        event[i](...)
    end
end

function up.event_register(obj, name, f)
    local events = obj._events
    if not events then
        events = {}
        obj._events = events
    end
    local event = events[name]
    if not event then
        event = {}
        events[name] = event
        local up_event = name
        if obj.event_subscribe then
            obj:event_subscribe(up_event)
        end
        function event:remove()
            events[name] = nil
            if obj.event_unsubscribe then
                obj:event_unsubscribe(up_event)
            end
        end
    end
    return up.trigger(event, f)
end

function up.game:event_dispatch(name, ...)
    return up.event_dispatch(self, name, ...)
end

function up.game:event_notify(name, ...)
    return up.event_notify(self, name, ...)
end

function up.game:event(name, f)
    return up.event_register(self, name, f)
end
