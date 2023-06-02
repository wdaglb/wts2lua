--{'命令-移动',{'__point','point'}},
--{'命令-攻击移动',{'__point','point'}},
--{'命令-攻击',{'__target_unit','unit'},{'__destructible_id','des'}},
--{'命令-巡逻',{'__point','point'}},
--{'命令-停止'},
--{'命令-防守',{'__point','point'}},
--{'命令-拾取物品',{'__item_id','item'}},
--{'命令-丢弃物品',{'__item_id','item'}},
--{'命令-给予物品',{'__item_id','item'},{'__target_unit','unit'}},
--{'命令-跟随',{'__target_unit','unit'}},
--{'命令-沿路径移动'},

up.game:event('单位-收到指令',function(_,unit,order, ...)
    --如果攻击目标是可破坏物做一个特判
    if order == '命令-攻击' then
        local target = ...
        if target.type == 'destructable' then
            unit:event_dispatch( order..'可破坏物', unit,target)
            return
        end
    end
    unit:event_dispatch(order,unit,...)
end)

local a_type = {
    [0]= '隐藏',
    [1] = '普攻',
    [2] = '通用',
    [3] = '英雄',
}


up.game:event('玩家-打开技能指示器',function(_,player,unit,type,index)
    local skill = unit:find_skill(a_type[type],nil,index)
    up.game:event_dispatch('指示器-显示',player,skill)
end)

up.game:event('玩家-关闭技能指示器',function(_,player,unit,type,index)
    local skill = unit:find_skill(a_type[type],nil,index)
    up.game:event_dispatch('指示器-消失',player,skill)
end)