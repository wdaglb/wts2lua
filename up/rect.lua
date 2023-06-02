local setmetatable = setmetatable
local math_floor = up.math.floor
local pairs = pairs

local mt = {}
mt.__index = mt
mt.type = 'rect'

function mt:set_point(point)

end

function up.actor_rect(r)
    local id 
    if type(r) == 'number' then
        id = r
        r = GameAPI.get_unit_by_id(r)
    else
        id = r.api_get_id()
    end
    if not Units[id] then
        local unit = {}
        unit._base = r
        setmetatable(unit, mt)
        Units[id] = unit
    end
    return Units[id]
end

up.create_cir = function(point,range)
    return up.actor_rect(gameapi.create_new_cir_area(point._base, Fix32(range)))
end
