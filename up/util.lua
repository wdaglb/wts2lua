if up.split then return end

local table_insert = table.insert
local math_cos = math.cos
local math_sin = math.sin
local math_rad = math.rad
local math_floor = math.floor

function up.traceback(message)
    print('--------------------------')
    print('LUA ERROR:'..tostring(message)..'|n')
    print(debug.traceback())
    print('--------------------------')
end


function up.split(str, p)
	local rt = {}
	str:gsub('[^'..p..']+', function (w)
		table_insert(rt, w)
	end)
	return rt
end

function up.get_item_kv(key,name)
    return GameAPI.get_item_key_integer_kv(key,name)
end

function up.has_skill_kv(s_id,key,type)
    return GameAPI['has_ability_key_'..KvType[type]..'_kv'](s_id,key)
end

--获取技能类型的KV属性
function up.get_skill_kv(s_id,key,vType)
    local value = GameAPI['get_ability_key_'..KvType[vType]..'_kv'](s_id,key)
    if vType == 'real' then
        value = value:float()
    end
    if type(value) ~= 'number' and vType == 'int' then
        value = value:int()
    end
    return value
end


---vector3
---@param x float
---@param y float
---@param z float
---@return vector3
function up.vector3(x,y,z)
    return {
        x = x,
        y = y,
        z = z,
    }
end

---vector2
---@param x float
---@param y float
---@return vector2
function up.vector2(x,y)
    return {
        x = x,
        y = y,
    }
end

---color
---@param r number
---@param g number
---@param b number
---@return color
function up.color(r,g,b)
    return {
        r = r,
        g = g,
        b = b
    }
end

---缓动
---@param easeType string 缓动方式
---@param currentTime number 缓动当前进度
---@param startValue number 初始值
---@param changeValue number 变化值
---@param duration number 缓动总进度
function up.ease(_type,currentTime, startValue, changeValue, duration)
    local ease = {
        ['线性'] = function(currentTime, startValue, changeValue, duration)
            return currentTime * changeValue / duration + startValue
        end,
        ['缓入'] = function(currentTime, startValue, changeValue, duration, power)
            if not power then power = 2 end
            currentTime = currentTime / duration
            return changeValue * (currentTime ^ power) + startValue
        end,
        ['缓出'] = function(currentTime, startValue, changeValue, duration, power)
            if not power then power = 2 end
            if power > 2 then
                currentTime = currentTime / duration - 1
                if up.IsEvenNum(power) then
                    return changeValue * (currentTime ^ power - 1) + startValue
                else
                    return changeValue * (currentTime ^ power + 1) + startValue
                end
            else
                currentTime = currentTime / duration
                return -changeValue * currentTime * (currentTime - 2) + startValue
            end
        end,
    }
    return ease[_type](currentTime, startValue, changeValue, duration)
end


---缓动计时器
---@param easeType string 缓动方式
---@param duration float 总时间
---@param startValue float 起始位置
---@param changeValue float 变化量
---@param action function 执行函数
function up.ease_timer(easeType,startValue,changeValue,duration,action)
    ---当前时间
    local currentTime = 0
    up.loop(0.03,function(self)
        currentTime = currentTime + 0.03
        action(up.ease(easeType,currentTime,startValue,changeValue,duration))
        if currentTime >= duration then
            self:remove()
        end
    end)
end

function up.get_item_name(key)
    return GameAPI.get_item_name_by_type(key)
end

function up.get_item_desc(key)
    return GameAPI.get_item_desc_by_type(key)
end

function up.get_item_icon(key)
    return GameAPI.get_item_key_icon(key)
end

function up.get_item_buy_price(key,price_tpye)
    return GameAPI.get_item_buy_price(key, price_tpye):float()
end

function up.get_tech_name(tech)
    return GameAPI.get_tech_name_by_type(tech)
end

function up.get_unit_name(key)
    return GameAPI.get_unit_name_by_type(key)
end

function up.get_unit_icon(key)
    return GameAPI.get_icon_id_by_unit_type(key)
end

function up.get_unit_desc(key)
    return GameAPI.get_unit_desc_by_type(key)
end

function up.get_ability_icon(key)
    return GameAPI.get_icon_id_by_ability_type(key)
end

function up.get_ability_name(key)
    return GameAPI.get_ability_name_by_type(key)
end

function up.get_ability_desc(key)
    return GameAPI.get_ability_desc_by_type(key)
end

--获取资源图标
function up.get_res_icon(name)
    return GameAPI.get_role_res_icon(name)
end

--获取所有资源类型
    --是否仅包含货币
function up.get_all_resType(must_money)
    local t = {}
    for _, key in Python.enumerate(GameAPI.iter_role_res(must_money)) do
        table.insert(t,key)
    end
    return t
end

function up.create_harm_text(point,type,text,playerGroup)
    if type=='获取金币' or type == '获取木材' then
        GameAPI.create_harm_text(point._base,HarmTextType[type],"+"..math.floor(text),ALL_PLAYER)
    else
        GameAPI.create_harm_text(point._base,HarmTextType[type],math.floor(text),ALL_PLAYER)
    end
end

--获取游戏昼夜时间
function up.get_game_time()
    return GameAPI.get_cur_day_and_night_time():float()
end


function up.get_unit_type_kv(name,type)
    return GameAPI.get_unit_key_unit_name_kv(name,type)
end

EVENT_ID = 700000
function up.get_event_id()
    EVENT_ID = EVENT_ID + 1
    return EVENT_ID
end

function up.table_copy(tbl)
    local a = {}
    for k,v in pairs(tbl) do
        a[k] = v
    end
    return a
end

function up.set_global_value(name,value)
    if type(value) == 'number'  then
        if math.type(value) == 'integer' then
            gameapi.set_trigger_variable_integer(name, value)
        else
            gameapi.set_trigger_variable_float(name, Fix32(value))
        end
    end
    if type(value) == 'string'  then
        gameapi.set_trigger_variable_string(name, value)
    end
end

function table.removeValue(t,value)
    for k,v in ipairs(t) do
        if v == value then
            table.remove(t,k)
            return k
        end
    end
    return nil
end

function up.item_list(list)
	return setmetatable({}, {__newindex = function(_, k, v)
		for _, name in ipairs(list) do
			up.item[name][k] = v
		end
	end})
end

function up.skill_list(list)
	return setmetatable({}, {__newindex = function(_, k, v)
		for _, name in ipairs(list) do
			up.skill[name][k] = v
		end
	end})
end

--把小数点后的0去掉
function up.FormatNum (num)
    num = tonumber(num)
	if num <= 0 then
		return 0
	else
		local t1, t2 = math.modf(num)
		---小数如果为0，则去掉
		if t2 > 0 then
			return num
		else
			return t1
		end
	end
end

--判断是否为偶数
function up.IsEvenNum(num)
    local num1,num2 = math.modf(num/2)
    if num2 == 0 then
        return true
    else
        return false
    end
end

-- 十进制转二进制
function up.byte2bin(n)
    local t = {}
    for i=8,0,-1 do
        t[#t+1] = math.floor(n / 2^i)
        n = n % 2^i
    end
    return table.concat(t)
end

-- 判断有哪几个二进制数
    -- n    十进制数
    -- m    二进制最大位数
function up.byte2get(n,m)
    local t = {}
    local v
    for i=m,0,-1 do
        v = math.floor(n/2^i)
        if v == 1 then
            table.insert(t,2^i)
        end
        n = n % 2^i
    end
    return t
end

Print_debug = true
function DebugMsg(text)
    if Print_debug then
        print(text)
    end
end

--转化py对象为lua对象
up.py_obj = {}
local py_obj = up.py_obj

function py_obj.new(py)
    local obj = {}
    obj.py = py
    obj.functions = {}
    setmetatable(obj,{
        __index = function(obj,key)
            if obj.functions[key] == nil then
                obj.functions[key] = obj.py[key]
            end
            return obj.functions[key]
        end
    })
    return obj
end

up.game_api = {}
local game_api = up.game_api

game_api.functions = {}
setmetatable(game_api,{
    __index = function(game_api,key)
        if game_api.functions[key] == nil then
            game_api.functions[key] = game_api[key]
        end
        return game_api.functions[key]
    end
})
