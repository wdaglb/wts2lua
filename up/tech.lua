
local unit = up.unit_class

--获取单位可研发科技列表
function unit.__index.get_tech_list(self)
    local a = self._base:api_get_tech_list()
    local r = {}
    for _, value in Python.enumerate(a) do
        table.insert(r,value)
    end
    return r
end

--获取单位指定序号的科技
function unit.__index.get_tech_index(self,index)
    return self:get_tech_list()[index]
end

--前置条件是否满足
function unit.__index.check_tech(self,tech_key)
    return self._base:api_check_tech_precondition(tech_key)
end

--获取科技图标
function up.get_tech_icon(tech_key,level)
    return GameAPI.get_tech_icon(tech_key,level)
end

--获取科技资源消耗
function up.get_tech_cost(tech_key,level)
    local a = GameAPI.get_tech_cost(tech_key,level)
    local r = {}
    for _, value in Python.enumerate(a) do
        local vt = {}
        for _, v in Python.enumerate(value) do
            table.insert(vt,v)
        end
        r[vt[1]] = vt[2]:float()
    end
    return r
end

--获取科技资源消耗指定类型的资源
function up.get_tech_cost_res(tech_key,level,res)
    return up.get_tech_cost(tech_key,level)[res]
end

--获取科技名称
function up.get_tech_name(tech_key)
    return GameAPI.get_tech_name_by_type(tech_key)
end

--获取科技描述
function up.get_tech_desc(tech_key)
    return GameAPI.get_tech_desc_by_type(tech_key)
end

--获取科技最大等级
function up.get_tech_max_level(tech_key)
    return GameAPI.get_tech_max_level(tech_key)
end
