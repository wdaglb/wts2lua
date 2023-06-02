--粒子特效

local setmetatable = setmetatable
local ipairs = ipairs
local pairs = pairs
local table_insert = table.insert

local mt = {}
mt.__index = mt
mt.type = 'particle'
mt.rotate = {}
mt.scale = {}
mt.facing = 0
mt.height = 0
mt.ani_speed = 1
mt.point = nil
mt.timer = nil
up.particle_class = mt

function mt:remove()
    GameAPI.delete_sfx(self._base)
end

function mt:set_rotate(x,y,z)
    GameAPI.set_sfx_rotate(self._base,Fix32(x),Fix32(y),Fix32(z))
    self.rotate = {x,y,z}
end

function mt:get_rotate()
    return self.rotate
end

function mt:set_angle(angle)
    GameAPI.set_sfx_angle(self._base,Fix32(angle))
    self.facing = angle
end

function mt:get_angle()
    return self.facing
end

function mt:set_scale(x,y,z)
    GameAPI.set_sfx_scale(self._base,Fix32(x),Fix32(y),Fix32(z))
    self.scale = {x,y,z}
end

function mt:get_scale()
    return self.scale
end

function mt:set_height(height)
    GameAPI.set_sfx_height(self._base,Fix32(height))
    self.height = height
end

function mt:get_height()
    return self.height
end

function mt:set_point(point)
    GameAPI.set_sfx_position(self._base,point)
    self.point = point
end

function mt:get_point()
    return self.point
end

function mt:set_ani_speed(speed)
    GameAPI.set_sfx_animation_speed(self._base,Fix32(speed))
    self.ani_speed = speed
end

function mt:get_ani_speed()
    return self.ani_speed
end

function mt:set_time(time)
    if self.timer then
        self.timer:remove()
    end
    self.timer = up.wait(time,function()
        self:remove()
    end)
end

function mt:get_time()
    if not self.timer then
        return -1
    end
    return self.timer:get_remaining()
end

up.create_particle_for_unit = function(id,unit,socket,scale,time,angle,follow_rotation,follow_scale)
    local particle = {}
    particle._base = GameAPI.create_sfx_on_unit(
        id,
        unit._base,
        socket or 'origin',
        follow_rotation or false,
        follow_scale or false,
        Fix32(scale or 1),
        Fix32(time or -1),
        Fix32(angle or 0)
    )
    setmetatable(particle, mt)

    return particle
end

up.particle = function(data)
    if not data.angle then data.angle = 0 end
    if not data.scale then data.scale = 1 end
    if not data.height then data.height = 0 end
    if not data.time then data.time = 9999999 end

    local particle = {}
    if data.target.type == 'unit' then
        particle._base = GameAPI.create_sfx_on_unit(
            data.model or data.id,
            data.target._base,
            data.socket or 'origin',
            data.follow_rotation or false,
            data.follow_scale or false,
            Fix32(data.scale or 1),
            Fix32(data.time or -1),
            Fix32(data.angle or 0)
        )
    else
        particle._base = GameAPI.create_sfx_on_point(
            data.model or data.id,
            data.target._base,
            Fix32(data.angle),
            Fix32(data.scale),
            Fix32(data.height),
            Fix32(data.time)
        )
    end
    setmetatable(particle, mt)
    particle.point = data.target

    if data.speed then
        particle:set_ani_speed(data.speed)
    end
    if data.is_die_remove then
        if not data.target.die_particle then data.target.die_particle = {} end
        table.insert(data.target.die_particle,particle)
    end
    return particle
end

up.game:event('单位-死亡',function(_,dead)
    if dead.die_particle then
        for _,v in ipairs(dead.die_particle) do
            v:remove()
        end
    end
end)
