
local math = math
local table = table
local table_insert = table.insert
local table_sort = table.sort
local setmetatable = setmetatable
local ipairs = ipairs

local mt = {}
--结构
mt.__index = mt
--类型
mt.type = 'selector'

--筛选条件
mt.filters = nil

--自定义条件
function mt:add_filter(f)
	table_insert(self.filters, f)
	return self
end

--选取规则
	--圆形范围
	--	圆心
	--	半径
	function mt:in_range(p, r)
		self.filter_in = 'range'
		self.center = p
		self.r = r
		return self
	end

	--扇形范围
	--	圆心
	--	半径
	--	角度
	--	区间
	function mt:in_sector(p, r, angle, section)
		self.filter_in = 'sector'
		self.center = p
		self.r = r
		self.angle = angle
		self.section = section
		return self
	end

	--矩形范围
	--	起点
	--	角度
	--	长度
	--	宽度
	function mt:in_line(p, angle, len, width)
		self.filter_in = 'line'
		self.center = p - {angle,len/2}
		self.angle = angle
		self.length = len
		self.width = width
		return self
	end

	--环形范围
	--	圆心
	--	内圈
	--	外圈
	function mt:in_annular(p, r1, r2)
		self.filter_in = 'annular'
		self.center = p
		self.small_r = r1
		self.big_r = r2
		return self
	end

	--	在区域内
	function mt:in_area(area)
		self.area = area
	end

--过滤规则
	--不是指定单位
	--	单位
	function mt:is_not(u)
		return self:add_filter(function(dest)
			return dest ~= u
		end)
	end

	--是敌人
	--	参考单位/玩家
	function mt:is_enemy(u)
		return self:add_filter(function(dest)
			return dest:is_enemy(u)
		end)
	end

	--是友军
	--	参考单位/玩家
	function mt:is_ally(u)
		return self:add_filter(function(dest)
			return dest:is_ally(u)
		end)
	end

	--是指定玩家的
	function mt:is_player(player)
		return self:add_filter(function(dest)
			return dest:get_owner() == player
		end)
	end

	--没有指定BUFF
	function mt:is_not_buff(name)
		return self:add_filter(function(dest)
			return not dest:find_buff(name)
		end)
	end

	--拥有指定tag
	function mt:has_tag(tag)
		return self:add_filter(function(dest)
			return dest:has_tag(tag)
		end)
	end

	--必须是英雄
	function mt:is_hero()
		return self:add_filter(function(dest)
			return dest:is_type('hero')
		end)
	end

	--必须是指定类型
	function mt:is_type(type)
		return self:add_filter(function(dest)
			return dest:is_type(type)
		end)
	end

	--必须是指定单位类型
	function mt:is_unitType(id)
		return self:add_filter(function(dest)
			if dest.type ~= 'unit' then
				return false
			else
				return dest:get_key() == id
			end
		end)
	end

	--必须不是英雄
	function mt:is_not_hero()
		return self:add_filter(function(dest)
			return not dest:is_type('hero')
		end)
	end

	--必须是建筑
	function mt:is_building()
		return self:add_filter(function(dest)
			return dest:is_type('building')
		end)
	end

	--必须不是建筑
	function mt:is_not_building()
		return self:add_filter(function(dest)
			return not dest:is_type('building')
		end)
	end

	--必须不在表内
	function mt:is_not_in_table(t)
		return self:add_filter(function(dest)
			for _,v in ipairs(t) do
				if v == dest then
					return false
				end
			end
			return true
		end)
	end

	--必须是可见的
	function mt:is_visible(u)
		return self:add_filter(function(dest)
			return dest:is_visible(u)
		end)
	end

	--必须是幻象
	function mt:is_illusion()
		return self:add_filter(function(dest)
			return dest:is_illusion()
		end)
	end

	--必须不是幻象
	function mt:is_not_illusion()
		return self:add_filter(function(dest)
			return not dest:is_illusion()
		end)
	end

	--可以是无敌单位
	function mt:allow_god()
		self.is_allow_god = true
		return self
	end

	--可以是死亡单位
	function mt:allow_dead()
		self.is_allow_dead = true
		return self
	end

--对选取到的单位进行过滤
function mt:do_filter(u)

	if not self.is_allow_dead and not u:is_alive() then
		return false
	end

	for i = 1, #self.filters do
		local filter = self.filters[i]
		if not filter(u) then
			return false
		end
	end
	return true
end

--排序
	function mt:set_sorter(f)
		self.sorter = f
		return self
	end

	--排序权重 和poi的距离
	function mt:sort_nearest_unit(poi)
		local poi = poi:get_point()
		return self:set_sorter(function (u1, u2)
			return u1:get_point() * poi < u2:get_point() * poi
		end)
	end

	--排序权重：1、英雄 2、和poi的距离
	function mt:sort_nearest_hero(poi)
		local poi = poi:get_point()
		return self:set_sorter(function (u1, u2)
			if u1:is_hero() and not u2:is_hero() then
				return true
			end
			if not u1:is_hero() and u2:is_hero() then
				return false
			end
			return u1:get_point() * poi < u2:get_point() * poi
		end)
	end

	function mt:sort_nearest_type_hero(poi)
		local poi = poi:get_point()
		return self:set_sorter(function (u1, u2)
			if u1:is_type('hero') and not u2:is_type('hero') then
				return true
			end
			if not u1:is_type('hero') and u2:is_type('hero') then
				return false
			end
			return u1:get_point() * poi < u2:get_point() * poi
		end)
	end

--进行选取
function mt:select(select_unit)
    local g
	if self.filter_in == 'range' then
		--	圆形选取
		g = GameAPI.filter_unit_id_list_in_area(
            self.center:get_point()._base,
            GlobalAPI.create_circular_shape(
                Fix32(self.r)
            )
        )
	elseif self.filter_in == 'sector' then
        --  扇形选取
		g = GameAPI.filter_unit_id_list_in_area(
            self.center:get_point()._base,    --中心点
            GlobalAPI.create_sector_shape(
                Fix32(self.r),          --半径
                Fix32(self.section),    --夹角
                self.angle              --朝向
            )
        )
	elseif self.filter_in == 'line' then
        --  直线选取
		g = GameAPI.filter_unit_id_list_in_area(
            self.center:get_point()._base,    --中心点
            GlobalAPI.create_rectangle_shape(
                Fix32(self.width),      --长
                Fix32(self.length),     --宽
                Fix32(self.angle)       --角度
            )
		)
	elseif self.filter_in == 'annular' then
        --  环形选取
		g = GameAPI.filter_unit_id_list_in_area(
            self.center:get_point()._base,    --中心点
            GlobalAPI.create_annular_shape(
                Fix32(self.small_r),    --内圈
                Fix32(self.big_r)    	--外圈
            ))
	elseif self.filter_in == 'area' then
		g = GameAPI.get_unit_group_in_area(self.area)
    end

    for i in Python.enumerate(g) do
		local unit = up.actor_unit(g[i])
		if self:do_filter(unit) then
        	select_unit(unit)
		end
    end
end

function mt:get()
	local units = {}
	self:select(function (u)
        table_insert(units, u)
    end)
	if self.sorter then
		table_sort(units, self.sorter)
	end
	return units
end

function mt:ipairs()
    return ipairs(self:get())
end

function mt:random()
    local g = self:get()
    if #g > 0 then
        return g[GameAPI.randint(1,#g)]
    end
end

function up.selector()
	return setmetatable({filters = {}}, mt)
end

function up.selectorFilter(callback)
    DefaultFilter = callback
end
