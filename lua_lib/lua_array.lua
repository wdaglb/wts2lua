-- splice
-- arr 数组
-- index 删除位置
-- deleteCount 删除数量
-- ... 替换元素
function __Array_Splice(arr, index, deleteCount, ...)
    local backupArr = {}
    for i, v in ipairs(arr) do
        backupArr[i] = v
    end
    index = math.min(#arr + 1, math.max(1, index or 1))
    deleteCount = deleteCount or (#arr - index + 1)

    local deletedItems = {}
    for i = 1, deleteCount do
        table.insert(deletedItems, table.remove(arr, index))
    end

    for i = 1, select('#', ...) do
        table.insert(arr, index, select(i, ...))
        index = index + 1
    end
    return unpack(deletedItems)
end

function __Array_Slice(arr, startIndex, endIndex)
    local sliced = {}
    startIndex = startIndex or 1
    endIndex = endIndex or #arr
    local step = startIndex <= endIndex and 1 or -1
    for i = startIndex, endIndex, step do
        table.insert(sliced, arr[i])
    end
    return sliced
end

function __Array_Reverse(arr)
    local n = #arr
    for i = 1, math.floor(n / 2) do
        arr[i], arr[n-i+1] = arr[n-i+1], arr[i]
    end
    return arr
end

function __Array_Map(arr, call)
    local res = {}
    for i = 1, #arr do
        table.insert(res, i, call(arr[i], i))
    end
    return res
end

function __Array_ForEach(arr, call)
    for i = 1, #arr do
        call(arr[i], i)
    end
end

function __Array_Filter(arr, call)
    local res = {}
    for i = 1, #arr do
        if call(arr[i], i) then
            table.insert(res, i, arr[i])
        end
    end
    return res
end

function __Array_IndexOf(arr, val, fromIndex)
    local res = {}
    fromIndex = fromIndex or 1
    for i = fromIndex, #arr do
        if arr[i] == val then
            return i
        end
    end
    return 0
end

function __Array_Includes(arr, val)
    return __Array_IndexOf(arr, val) ~= 0
end

function __Array_Unshift(arr, ...)
    local insert = {...}
    for i = 1, #insert do
        arr[i + #insert] = insert[i]
    end
end

function __Array_Clone(arr)
    if arr == nil then
        return nil
    end
    local copy = {}
    for k, v in pairs(arr) do
        if type(v) == 'table' then
            copy[k] = __Array_Clone(v)
        else
            copy[k] = v
        end
    end
    setmetatable(copy, __Array_Clone(getmetatable(arr)))
    return copy
end

function __Array_Concat(arr, arr2)
    local res = __Array_Clone(arr)
    for i = 1, #arr2 do
        table.insert(res, i + #arr, arr2[i])
    end
    return res
end

function __Array_Fill(arr, value, startIndex, endIndex)
    startIndex = startIndex or 1
    endIndex = endIndex or #arr
    for i = startIndex, endIndex do
        arr[i] = value
    end
    return arr
end

function __Array_FindIndex(arr, call)
    for i = 1, #arr do
        if (call(arr[i])) then
            return i
        end
    end
    return 0
end

function __Array_Find(arr, call)
    for i = 1, #arr do
        if (call(arr[i])) then
            return arr[i]
        end
    end
    return nil
end

function __Array_Shift(arr)
    return table.remove(arr, 1)
end

function __Array_Pop(arr)
    return table.remove(arr)
end

function __Array_Every(arr, call)
    local count = 0
    for i = 1, #arr do
        if (call(arr[i])) then
            count = count + 1
        end
    end
    return count == #arr
end

function __Array_At(arr, index)
    if (index <= 0) then
        return arr[#arr - math.abs(index)]
    end
    return arr[index]
end

function __Array_LastIndexOf(arr, val, fromIndex)
    local res = {}
    local idx = 0

    fromIndex = fromIndex or 1
    for i = fromIndex, #arr do
        if arr[i] == val then
            idx = i
        end
    end
    return idx
end
