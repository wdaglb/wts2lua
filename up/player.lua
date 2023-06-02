
local math = math
local table = table
local setmetatable = setmetatable
local type = type

---@class player
local mt = {}
mt.__index = mt

--类型
mt.type = 'player'

local Player = {}

function mt:__tostring()
    return ('%s|%s|%s'):format('player', self:get_name(), tostring(self._base))
end

function mt:set_input(bool)
    GameAPI.block_global_mouse_event(self._base,bool)
    --GameAPI.block_global_key_event(self._base,bool)
end

function mt:refresh_team_list(team_id)
    local u = GameAPI.get_unit_ids_in_team(self._base,team_id)
    self._base:role_select_unit(u)
end

function mt:get_team_unit(team_id)
    local u = GameAPI.get_unit_ids_in_team(self._base,team_id)
    local group = {}
    for index, value in Python.enumerate(u) do
        local a = up.actor_unit(value)
        table.insert(group,a)
    end
    return group
end

function mt:add(key,value)
    self._base:change_role_res(key,Fix32(value))
end

function mt:set(key,value)
    self._base:set_role_res(key,Fix32(value))
end

function mt:get(key)
    return self._base:get_role_res(key):float()
end

function mt:get_status()
    return RoleStatus[self._base:get_role_status()]
end

function mt:get_name()
    return self._base:get_role_name()
end

function mt:set_name(name)
    self._base:set_role_name(name)
end

--获取玩家类型
function mt:get_type()
    return RoleType[self._base:get_role_type()]
end

--获取鼠标位置
function mt:get_mouse_pos()
    return up.actor_point(GameAPI.get_player_pointing_pos(self._base))
end

--设置鼠标框选开关
function mt:set_mouse_select(flag)
    self._base:set_role_mouse_move_select(flag)
end

--设置鼠标点选开关
function mt:set_mouse_click(flag)
    self._base:set_role_mouse_left_click(flag)
end

-- 获取playerID
function mt:get_id()
    return self._base:get_role_id_num()
end
function mt:set_exp_rate(rate)
    self._base:set_role_exp_rate(rate)
end

function mt:get_exp_rate()
    return self._base:get_role_exp_rate()
end

function mt:show_text(text)
    --GameAPI.show_msg_to_role(self._base,text,false)
end

function mt:msg(text)
    GameAPI.show_msg_to_role(self._base,text,false)
end

--科技相关
function mt:set_tech_lv(tech,lv)
    self._base:api_set_tech_level(tech,lv)
end

function mt:get_tech_lv(tech)
    return self._base:api_get_tech_level(tech)
end

function mt:get_tech_level(tech)
    return self._base:api_get_tech_level(tech)
end

function mt:add_tech_level(tech,lv)
    return self._base:api_change_tech_level(tech,lv)
end

function mt:set_tech_level(tech,lv)
    return self._base:api_set_tech_level(tech,lv)
end

-- 获取阵营
function mt:get_team()
    return self._base:api_get_camp_id()
end

function mt:set_team(id)
    self._base:set_role_camp_id(id)
end

function mt:create_unit(name,point,angle)
    return up.create_unit(name, point, angle, self)
end

function mt:select(unit,flag)
    if not unit then return end
    if flag then
        self._base:role_select_unit(unit._base)
    else
        up.wait(0.033,function()
            self._base:role_select_unit(unit._base)
        end)
    end
end

function mt:set_born_point(point)
    self._base:set_role_spawn_point(point._base)
end

function mt:get_born_point()
    return up.actor_point(self._base:get_role_spawn_point())
end

--设置是否敌对
function mt:set_alliance_state(_player,state)
    self._base:set_role_hostility(_player._base,state)
end

--设置是否与所有玩家敌对
function mt:set_all_state(state)
    self._base:set_role_hostility(ALL_PLAYER,state)
end

function mt:game_win()
    GameAPI.set_melee_result_by_role(self._base,'victory',true,false,0,false)
end

function mt:game_bad()
    GameAPI.set_melee_result_by_role(self._base,'defeat',true,false,0,false)
end

--镜头绑定到单位
function mt:camera_focus(unit)
    GameAPI.camera_set_follow_unit(self._base,unit._base)
end

--解除单位绑定
function mt:camera_unfocus()
    GameAPI.camera_cancel_follow_unit(self._base)
end

--开启玩家镜头移动
function mt:camera_open_move()
    GameAPI.camera_set_move_enable(self._base)
end

--关闭玩家镜头移动
function mt:camera_close_move()
    GameAPI.camera_set_move_not_enable(self._base)
end

--设置镜头到指定点
function mt:set_camera(point,time,speed_type)
    local speed_type_key = {
        ['匀速'] = 0,
        ['匀加速'] = 1,
        ['匀减速'] = 2,
    }
    gameapi.camera_linear_move_duration(self._base, Fix32Vec3(point.x/100, 0, point.y/100), Fix32(time or 0.1), speed_type_key[speed_type or '匀速'])
end

--设置镜头俯仰角
function mt:set_camera_pitch(pitch,time)
    if time then
        --GameAPI.camera_rotate_pitch_angle_duration(self._base,Fix32(pitch),Fix32(time))
    else
        GameAPI.camera_set_param_pitch(self._base,Fix32(pitch))
    end
end
--设置镜头导航角
function mt:set_camera_yaw(yaw,time)
    if time then
        --GameAPI.camera_rotate_yaw_angle_duration(self._base,yaw,Fix32(time))
    else
        GameAPI.camera_set_param_yaw(self._base,yaw)
    end
end
--设置镜头滚角
function mt:set_camera_roll(value,time)
    if time then
        --GameAPI.camera_rotate_roll_angle_duration(self._base,Fix32(value),Fix32(time))
    else
        gameapi.camera_set_param_roll(self._base, Fix32(value))
    end
end

--设置镜头焦点距离
function mt:set_camera_distance(dis)
    GameAPI.camera_set_param_distance(self._base,Fix32(dis))
end

--设置镜头焦点高度
function mt:set_camera_height(y)
    GameAPI.camera_set_focus_y(self._base,y)
end

function mt:camera_shake(dis,speed,time,angle)
    if angle == 'z' then
        GameAPI.camera_shake_z(self._base,Fix32(dis),Fix32(speed),Fix32(time))
    elseif angle == 'x' then
        GameAPI.camera_shake_xy(self._base,Fix32(dis),Fix32(speed),Fix32(time),1)
    else
        GameAPI.camera_shake_xy(self._base,Fix32(dis),Fix32(speed),Fix32(time),2)
    end
end

function mt:get_camera()
    local camera = {
        
    }
end

function mt:set_camera_data(data)
    GameAPI.apply_camera_conf(self._base,
        gameapi.add_camera_conf(
            data.point._base, 
            Fix32(data.dis or 0),       --焦点距离
            Fix32(data.height or 0),    --焦点高度
            Fix32(data.yaw or 0),       --导航角
            Fix32(data.pitch or 0),     --俯仰角
            Fix32(data.show_dis or 0)   --视野宽度
        ),
        Fix32(data.time or 0)
    )
end

function mt:get_units_by_key(key)
    local group = {}
    local u = GameAPI.get_units_by_key(key)
    for index, value in Python.enumerate(u) do
        local a = up.actor_unit(value)
        if a then
            if a:get_owner() == self then
                table.insert(group,a)
            end
        end
    end
    return group
end

function mt:remove_team_unit(team_id,unit)
    GameAPI.remove_unit_from_team(self._base,team_id,unit._base)
end

function mt:use_camera(camera,time)
    GameAPI.apply_camera_conf(self._base,camera,Fix32(time))
end

function mt:remove_control_unit(unit)
    GameAPI.remove_control_unit(self._base,unit._base)
end


--条件判断
    --与指定玩家是盟友
function mt:is_ally(role)
    return self._base:players_is_alliance(role._base)
end
    --与指定玩家是敌人
function mt:is_enemy(role)
    return self._base:players_is_enemy(role._base)
end

--指定按键是否按下
function mt:is_pressed(key)
    return GameAPI.player_key_is_pressed(self._base,key)
end

--判断按键是否被按下
function mt:is_key_pressed(key)
    return GameAPI.player_key_is_pressed(self._base,KEY[key])
end

--是否在线
function mt:is_playing()
    return self:get_status() == "playing"
end

--是用户
function mt:is_user()
    return self:get_type() == 'user'
end

--是本地玩家
function mt:is_local()
    return self._base == GameAPI.get_owner_role_id()
end

--是AI
function mt:is_ai()
    return self:get_type() == 'ai'
end

local up_event_dispatch = up.event_dispatch
local up_event_notify = up.event_notify
local up_game = up.game

--注册单位事件
function mt:event(name, f)
	return up.event_register(self, name, f)
end

--发起事件
function mt:event_dispatch(name, ...)
    local res, arg = up_event_dispatch(self, name, ...)
    if res ~= nil then
        return res, arg
    end
    local res, arg = up_event_dispatch(up_game, name, ...)
    if res ~= nil then
        return res, arg
    end
    return nil
end

function mt:event_notify(name, ...)
    up_event_notify(self, name, ...)
    up_event_notify(up_game, name, ...)
end


function up.player(i)
    if not Player[i] then
        local player = {}
        player._base = GameAPI.get_role_by_int(i)
        if not player._base then return nil end
        setmetatable(player, mt)
        Player[i] = player
    end
    return Player[i]
end

function up.get_localplayer()
    return up.player(GameAPI.get_owner_role_id())
end

return mt