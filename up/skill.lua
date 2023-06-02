local setmetatable = setmetatable
local ipairs = ipairs
local pairs = pairs
local table_insert = table.insert
local math_max = math.max
local math_floor = math.floor

local mt = {}
mt.__index = mt

function mt:__tostring()
    return ('%s|%s|%s'):format('skill', self:get_name(),self:get_id())
end

local event_name = {
	['on_add']          = {20001,EVENT.ABILITY_OBTAIN,'技能-获得'},
	['on_remove']       = {20002,EVENT.ABILITY_LOSE,'技能-失去'},
	['on_start']        = {20009,EVENT.ABILITY_CS_START,'技能-发布命令',true},
	['on_cast_start']   = {20003,EVENT.ABILITY_PS_START,'技能-前摇开始',true},
	['on_cast_channel'] = {20004,EVENT.ABILITY_PS_END,'技能-施法引导',true},
	['on_cast_shot']    = {20005,EVENT.ABILITY_SP_END,'技能-施法出手',true},
	['on_cast_finish']  = {20006,EVENT.ABILITY_CST_END,'技能-施法完成',true},
	['on_cast_stop']    = {20008,EVENT.ABILITY_END,'技能-施法停止',true},
    ['on_build']        = {20010,EVENT.ABILITY_BUILD_FINISH,'技能-建造完成',true},
}

local Skills = {}

function up.actor_skill(s)
    if not s then return end
    local data = {}
    local id = s:api_get_ability_id()
    local owner = s:api_get_owner():api_get_id()
    local seq_id = s:api_get_ability_seq()
    if Skills[owner] then
        if Skills[owner][seq_id] then
            return Skills[owner][seq_id]
        end
    else
        Skills[owner] = {}
    end
    for k, v in pairs(up.skill[id]) do
        if data[k] == nil then
            data[k] = v
        end
    end
    local skill = setmetatable(data, mt)
    skill._base = s
    skill.id = id
    Skills[owner][seq_id] = skill
    return Skills[owner][seq_id]
end

function up.unit_class.__index.each_skill(self,type)
    if type then
        if AbilityType[type] then type = AbilityType[type] end
        local a = self._base:api_get_abilities_by_type(type)
        local r = {}
        for index, value in Python.enumerate(a) do
            local s = up.actor_skill(value)
            table.insert(r,s)
        end
        local n = 0
        return function (t, v)
            n = n + 1
            return t[n]
        end, r
    else
        local r = {}
        for i = 0,3 do 
            local a = self._base:api_get_abilities_by_type(i)
            for index, value in Python.enumerate(a) do
                local s = up.actor_skill(value)
                table.insert(r,s)
            end
        end
        local n = 0
        return function (t, v)
            n = n + 1
            return t[n]
        end, r
    end
end

function up.unit_class.__index.find_skill(self,type,id,slot)
    local s
    if slot then
        s = self._base:api_get_ability(AbilityType[type],slot)
        if not s then
            return nil
        end
        id = s:api_get_ability_id()
    else
        s = self._base:api_get_ability_by_type(AbilityType[type],id)
    end
    if s then
        return up.actor_skill(s)
    else
        -- up.print('未搜索到ID为',id,'的技能')
    end
    
end

function up.unit_class:add_skill(type,id,slot)
    if not slot then slot = -1 end
    local s = self._base:api_add_ability(AbilityType[type],id,slot)
    -- if not up.skill[id] then
	-- 	-- log.error('技能不存在', name)
    --     --GameAPI.print_to_dialog(3,'不存在','为',tostring(id))
	-- 	return false
	-- end
    --GameAPI.print_to_dialog(3,'呀','为',tostring(id))
    
    
    --=======todo======
    --没办法找不到技能对象
	--local skill = self:find_skill(AbilityType[type], id)
	return up.actor_skill(s)
end

function mt:remove()
    self._base:api_remove()
end

function mt:stop()
    self._base:api_break_ability_in_cs()
end

function mt:get_owner()
    return up.actor_unit(self._base:api_get_owner())
end

function mt:get_max_level()
    return GameAPI.get_ability_max_level(self._base)
end

--获取/设置技能数据
function mt:get_id()
    return self._base:api_get_ability_id()
end

function mt:get_desc()
    return GameAPI.get_ability_desc_by_type(self:get_id())
end

function mt:get_icon()
    return GameAPI.get_icon_id_by_ability_type(self:get_id())
end

function mt:get(type)
    if ABILITY_STR_ATTRS[type] then
        if type == 'name' then
            return self:get_name()
        end
        return self._base:api_get_str_attr(ABILITY_STR_ATTRS[type])
    end
    if ABILITY_FLOAT_ATTRS[type] then
        return self._base:api_get_float_attr(ABILITY_FLOAT_ATTRS[type]):float()
    end
    if ABILITY_INT_ATTRS[type] then
        if type == 'level' then
            return self._base:api_get_level()
        end
        return self._base:api_get_int_attr(ABILITY_INT_ATTRS[type])
    end
    if ABILITY_BOOL_ATTRS[type] then
        return self._base:api_get_bool_attr(ABILITY_BOOL_ATTRS[type])
    end
    print('ERROR:不存在的技能数据类型')
end

function mt:set(vType,value)
    if ABILITY_STR_ATTRS[vType] then
        if type(value) ~= 'string' then
            print('ERROR:错误的数据值')
            return ''
        end
        return Fix32(self._base:api_set_str_attr(ABILITY_STR_ATTRS[vType]))
    end
    if ABILITY_FLOAT_ATTRS[vType] then
        if type(value) ~= 'number' then
            print('ERROR:错误的数据值')
            return 0
        end
        return Fix32(self._base:api_set_float_attr(ABILITY_FLOAT_ATTRS[vType],value))
    end
    if ABILITY_INT_ATTRS[vType] then
        if type(value) ~= 'number' then
            print('ERROR:错误的数据值')
            return 0
        end
        if type == 'level' then
            return self._base:api_set_level(value)
        end
        return self._base:api_set_int_attr(ABILITY_INT_ATTRS[vType],value)
    end
    if ABILITY_BOOL_ATTRS[vType] then
        if type(value) ~= 'number' then
            print('ERROR:错误的数据值')
            return false
        end
        return self._base:api_set_bool_attr(ABILITY_BOOL_ATTRS[vType],value)
    end
    print('ERROR:不存在的技能数据类型')
end

--目标获取
function mt:get_target()
    local u = GameAPI.get_target_unit_in_ability(self._base,self._cast)
    if u then
        return up.actor_unit(u)
    end
    local dest = GameAPI.get_target_dest_in_ability(self._base,self._cast)
    if dest then
        return up.actor_destructable(dest)
    end
    local item = GameAPI.get_target_item_in_ability(self._base,self._cast)
    if item then
        return up.actor_item(item)
    end
    local p = self._base:api_get_release_position(self._cast)
    if p then
        return up.actor_point(p)
    end
end
--条件判断


--是普通攻击
function mt:is_attack()
    return self._base:api_is_common_atk()
end

--技能等级
function mt:set_level(lv)
    self._base:api_set_level(lv)
end

function mt:add_level(lv)
    self._base:api_add_level(lv)
end

function mt:get_level()
    return self._base:api_get_level()
end

--技能类型和slot
function mt:get_type()
    return self._base:api_get_type()
end

function mt:get_slot_id()
    return self._base:api_get_ability_index()
end

function mt:get_cast_type()
    return AbilityCastTypeId[self._base:api_get_ability_cast_type()]
end

--标签
function mt:has_tag(tag)
    return self._base:has_tag(tag)
end


function mt:get_name()
    return self._base:api_get_name()
end

--层数相关
function mt:get_stack()
    return self._base:api_get_ability_stack()
end

function mt:set_stack(stack)
    self._base:api_set_ability_stack_count(stack)
end

function mt:add_stack(stack)
    self._base:api_add_ability_stack_count(stack)
end

--kv
function mt:setTypeKv(key,value)

end

--todo:技能实体现在没有KV属性
function mt:getKv(key,vType,isType)
end

function mt:hasTypeKv(key,type)
    return GameAPI['has_ability_key_'..KvType[type]..'_kv'](self:get_id(),key)
end
--获取技能类型的KV属性
function mt:getTypeKv(key,vType)
    local value = GameAPI['get_ability_key_'..KvType[vType]..'_kv'](self:get_id(),key)
    if vType == 'real' then
        value = value:float()
    end
    if type(value) ~= 'number' and vType == 'int' then
        value = value:int()
    end
    return value
end

--冷却相关
function mt:get_cd()
    return self._base:api_get_cd_left_time()
end

function mt:add_cd(cd)
    self._base:api_add_ability_cd(Fix32(cd))
end

function mt:set_cd(cd)
    self._base:api_set_ability_cd(Fix32(cd))
end

function mt:active_cd()
    self._base:api_restart_cd()
end

--启用禁用
function mt:enable()
    self._base:api_enable()
end

function mt:disable()
    self._base:api_disable()
end

local Casts = {}

function up.actor_cast(cast_id,skill)
    if Casts[skill] then
        if Casts[skill][cast_id] then
            return Casts[skill][cast_id]
        end
    else
        Casts[skill] = {}
    end
    local cast = skill
    cast._cast = cast_id
    Casts[skill][cast_id] = cast
    return Casts[skill][cast_id]
end

local function skill_event_init(skill,name)
    local hook = {}
    for k, v in pairs(event_name) do
        if skill[k] then
        else
            local trg = new_ability_trigger(name, v[1], tostring(v[3]), v[2], true)
            skill[k] = function() end
            function trg.on_event(trigger, event, actor, data)
                --local ab = setmetatable(data['ability'], mt)
                local obj = up.actor_skill(data['__ability'])
                if v[4] then
                    obj = up.actor_cast(data['__ability_runtime_id'],obj)
                end
                if obj then
                    local owner = obj:get_owner()
                    owner:event_dispatch(v[3],obj)
                end
                skill[k](obj)
            end
        end
    end
end

up.skill = setmetatable({}, {__index = function(self, name)
    self[name] = {}
    setmetatable(self[name], mt)
    skill_event_init(self[name],name)
    return self[name]
end})

up.game:event('单位-删除',function(_,unit,_id)
    if Skills[_id] then
        Skills[_id] = nil
    end
end)
