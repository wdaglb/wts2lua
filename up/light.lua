local setmetatable = setmetatable

---@class spotLight
local mt = {
    _base = nil,
    type = '方向光源',
    range = 0,
    intensity = 0,
    color = {},
    rotation = {},
    angle_min = 0,
    angle_max = 0,
}
mt.__index = mt

function mt:__tostring()
    return ('%s|%s'):format('方向光源', tostring(self._base))
end

function mt:remove()
    gameapi.remove_light(self._base)
end

function mt:setIntensity(value)
    gameapi.set_light_float_attr_value(self._base,'light_intensity',Fix32(value))
end

---设置旋转角度
---@param x number
---@param y number
---@param z number
function mt:set_rotation(x,y,z)
    if x then
        self.rotation.x = x
        gameapi.set_light_float_attr_value(self._base,'light_direction_x',Fix32(x))
    end
    if y then
        self.rotation.y = x
        gameapi.set_light_float_attr_value(self._base,'light_direction_y',Fix32(y))
    end
    if z then
        self.rotation.z = x
        gameapi.set_light_float_attr_value(self._base,'light_direction_z',Fix32(z))
    end
end

---设置颜色
---@param r number
---@param g number
---@param b number
function mt:set_color(r,g,b)
    if r then
        self.color.r = r
        gameapi.set_light_float_attr_value(self._base,'light_color_r',Fix32(r))
    end
    if g then
        self.color.g = g
        gameapi.set_light_float_attr_value(self._base,'light_color_g',Fix32(g))
    end
    if b then
        self.color.b = b
        gameapi.set_light_float_attr_value(self._base,'light_color_b',Fix32(b))
    end
end

function mt:setData(data)
    local datafunction = {
        range = function(v)
            gameapi.set_light_float_attr_value(self._base,'light_range',Fix32(v))
        end,
        intensity = function(v)
            gameapi.set_light_float_attr_value(self._base,'light_intensity',Fix32(v))
        end,
        color = function(v)
            gameapi.set_light_float_attr_value(self._base,'light_color_r',Fix32(v.r))
            gameapi.set_light_float_attr_value(self._base,'light_color_g',Fix32(v.g))
            gameapi.set_light_float_attr_value(self._base,'light_color_b',Fix32(v.b))
        end,
        angle_min = function(v)
            gameapi.set_light_float_attr_value(self._base,'light_inner_angle',Fix32(v))
        end,
        angle_max = function(v)
            gameapi.set_light_float_attr_value(self._base,'light_out_angle',Fix32(v))
        end,
        time = function(v)
            up.wait(v,function()
                self:remove()
            end)
        end,
    }
    for k,v in pairs(data) do
        self[k] = v
        datafunction[k](v)
    end
end

---创建方向光源
---@param sourcePoint point
---@param sourceHeight number
---@param targetPoint point
---@param targetHeight number
up.createSpotLight = function(sourcePoint,sourceHeight,targetPoint,targetHeight,data)
    local obj = {
        _base = gameapi.create_spot_light_to_point(sourcePoint._base, Fix32(sourceHeight/100), targetPoint._base, Fix32(targetHeight)),
        sourcePoint = sourcePoint,
        sourceHeight = sourceHeight,
        targetPoint = targetPoint,
        targetHeight = targetHeight,
    }

    setmetatable(obj, mt)
    if data then obj:setData(data) end
    return obj
end

---绑定方向光源到unit的socket，可选参数：偏移高度offset_height,面向目标facing_target,目标偏移高度target_offset_height
---@param unit unit 绑定单位
---@param socket string 挂接点
---@param offset_height float 偏移高度
---@param facing_target unit/effect 面向目标
---@param target_offset_height float 目标偏移高度
up.createSpotLight2Unit = function(unit,socket,offset_height,facing_target,target_offset_height,data)
    local obj = {
        _base = gameapi.create_directional_light_at_unit_socket(unit._base, socket, Fix32(offset_height or 0), facing_target._base or nil, Fix32(target_offset_height or 0)),
        sourcePoint = sourcePoint,
        sourceHeight = sourceHeight,
        targetPoint = targetPoint,
        targetHeight = targetHeight,
    }

    setmetatable(obj, mt)
    if data then obj:setData(data) end
    return obj
end


---创建方向光源属性
---@param range float 范围
---@param color color 颜色
---@param intensity float 光源强度
---@param angle_min float 最小散射角
---@param angle_max float 最大散射角
up.createSpotLightData = function(data)
    return data
end

local mt = {}
mt.__index = mt
mt.type = '点光源'

function mt:remove()
    gameapi.remove_light(self._base)
end

---创建点光源
---@param point point
---@param height float
up.createPointLight = function(point,height)
    local obj = {}
    obj._base = gameapi.create_point_light_to_point(point._base, Fix32(height))
    setmetatable(obj, mt)
    return obj
end