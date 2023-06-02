--- tableReader: Preload Lua Table from table editor in CliCli
-- @module tables
-- @author changoowu

local tables = {}
up.table = tables
--- Fill in the table name in the table editor into the "tables" 
--- Then you can use table editor data by "tables.tablename.key" or "tables[tablename][key]" at evenywhere.

local function checkTable(_table)
    for k,v in pairs (_table) do
        if type(v) == "table" then
            checkTable(v)
        end

        if string.sub(tostring(v),1,8) == "LuaFix32" then
            _table[k] = v:float()
        end
    end
end

local dialog = ''
for table_name,each_table in pairs (GLOBAL_TABLES) do
    tables[table_name] = {}
    for k,v in pairs(each_table) do 
        dialog = dialog ..'table_name  '..table_name..'|'..k..'|'..tostring(v)..'\n'
        tables[table_name][k] = v
        if type(tables[table_name][k]) == 'table' then
            checkTable(tables[table_name][k])
        end
        if string.sub(tostring(tables[table_name][k]),1,8) == "LuaFix32" then
            tables[table_name][k] = tables[table_name][k]:float()
        end
    end
end
