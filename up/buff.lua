local table_insert = table.insert
local setmetatable = setmetatable
local table_remove = table.remove
local math_max = math.max
local math_floor = up.math.floor
local pairs = pairs

local mt = {}
mt.__index = mt
mt.type = 'buff'

local Buffs = {}
function up.actor_buff(base)
    local id = base:api_get_modifier_unique_id()
    local key = base:api_get_modifier_key()
    if not Buffs[id] then
        local data = {}
        data._base = base
        for k, v in pairs(up.buff[key]) do
            if data[k] == nil then
                data[k] = v
            end
        end
        local buff = setmetatable(data, mt)
        buff.target = up.actor_unit(base:api_get_owner())
        if base:api_get_releaser() then
            buff.source = up.actor_unit(base:api_get_releaser())
        else
            buff.source = up.actor_unit(base:api_get_owner())
        end
        buff.id = id
        buff.key = key
        buff.skill = up.actor_skill( GlobalAPI.get_related_ability(base))
        buff.name = GameAPI.get_modifier_name_by_type(base:api_get_modifier_key())
        buff.desc = GameAPI.get_modifier_desc_by_type(base:api_get_modifier_key())
        buff.icon = GameAPI.get_icon_id_by_buff_type(base:api_get_modifier_key())

        Buffs[id] = buff
    end
    return Buffs[id]
end

function up.unit_class.__index:add_buff(id,data)
    if not data then data = {} end
    local source = data.source
    local skill = data.skill
    local target = self._base

    data.target = self
    if source then
        source = source._base
    end
    if skill then
        skill = skill._base
    end
    if not data.time then
        data.time = -1
    end
    if not data.updata then
        data.updata = 0
    end
    if not data.stack then
        data.stack = 1
    end
    local bf = target:api_add_modifier(
        id,
        source,
        skill,
        Fix32(data.time),
        Fix32(data.updata),
        data.stack
    )
    if not bf then return end
    return up.actor_buff(bf)
end

function up.unit_class.__index:get_all_buff()
    local bf_list = self._base:api_get_all_modifiers()
    local group = {}
    for index, value in Python.enumerate(bf_list) do
        local a = up.actor_buff(value)
        table.insert(group,a)
    end
    return group
end

--移除buff
function up.unit_class.__index:remove_buff(name)
    if type(name) == 'string' then
        name = tonumber(name)
    end
    self._base:api_remove_modifier_type(name)
    self = nil
end

--找buff
function up.unit_class.__index:find_buff(name)
    if type(name) == 'string' then
        name = tonumber(name)
    end
    local bff = self._base:api_get_modifier(-1,name)
    if bff then
        return up.actor_buff(bff)
    else
        return nil
    end
end

--是否有BUFF
function up.unit_class.__index:has_buff(name)
    if type(name) == 'string' then
        name = tonumber(name)
    end
    return self._base:api_has_modifier(name)
end

function mt:get_name()
    return gameapi.get_modifier_name_by_type(self._base:api_get_modifier_key())
end

function mt:get_desc()
    return gameapi.get_modifier_desc_by_type(self._base:api_get_modifier_key())
end

function mt:get_icon()
    return self.icon
end

function mt:get_source_unit()
    return self.source
end

function mt:get_source_skill()
    return self.skill
end

function mt:remove()
    self._base:api_remove()
end

function mt:add_stack(stack)
    self._base:api_add_buff_layer(stack)
end

function mt:set_stack(stack)
    self._base:api_set_buff_layer(stack)
end

function mt:get_stack()
    return self._base:api_get_int_attr("modifier_layer")
end

function mt:add_max_stack(stack)
    self._base:api_add_buff_max_layer(stack)
end

--获取效果携带者
function mt:get_owner()
    return self.target
end

--获取效果来源
function mt:get_source()
    return self.source
end

-- function mt:get_pulse()
--     return self._base:
-- end

function mt:add_pulse(time)
    self._base:api_add_cycle_time(Fix32(time))
end

function mt:set_pulse(time)
    self._base:api_set_cycle_time(Fix32(time))
end



function mt:add_remaining(time)
    self._base:api_set_buff_residue_time(Fix32(time))
end

--获取剩余持续时间
function mt:get_remaining()
    return self._base:api_get_residue_time():float()
end

--获取已持续时间
function mt:get_passed_time()
    return self._base:api_get_passed_time():float()
end


--光环
function mt:get_aura_child()
    --return 
end

function mt:get_aura_range()
end

--缺少护盾相关的api

--mt.source =  self._base:api_get_owner()






local event_name = {
	['on_add']          = {20001,EVENT.OBTAIN_MODIFIER,'效果-获得'},
	['on_remove']       = {20002,EVENT.LOSS_MODIFIER,'效果-失去'},
	['on_can_add']      = {20003,EVENT.MODIFIER_GET_BEFORE_CREATE,'效果-即将获得'},
	['on_stack']        = {20004,EVENT.MODIFIER_LAYER_CHANGE,'效果-层数变化'},
	['on_pulse']        = {20005,EVENT.MODIFIER_CYCLE_TRIGGER,'效果-心跳'},
	['on_cover']        = {20006,EVENT.MODIFIER_BE_COVERED,'效果-覆盖'},
}


local function buff_event_init(buff,name)
    local hook = {}
    for k, v in pairs(event_name) do
        if buff[k] then
        else
            local trg = new_modifier_trigger(tonumber(name), v[1], tostring(v[3]), v[2], true)
            buff[k] = function() end
            function trg.on_event(trigger, event, actor, data)
                local bf2 = up.actor_buff(data['__modifier'])
                buff[k](bf2)
            end
        end
    end
end



up.buff = setmetatable({}, {__index = function(self, name)
    self[name] = {}
    setmetatable(self[name], mt)
    buff_event_init(self[name],name)
    return self[name]
end})
