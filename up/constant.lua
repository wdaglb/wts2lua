
-- campinfo
RoleResKey = {}

RoleType = {
    [1] = 'user',
    [2] = 'ai',
}

RoleStatus = {
    [0] = 'idle',
    [1] = 'playing',
    [2] = 'none',
    [3] = 'lost',
    [4] = 'leave',
}

ABILITY_STR_ATTRS = {
	['名称'] = 'name',
	['描述'] = 'description',

    ['name'] = 'name',
    ['desc'] = 'description',
}

UNIT_ATTR_TYPE = {
    ['最大生命']='hp_max',
    ['最大生命值']='hp_max',
    ['当前生命值'] = 'hp_cur',
    ['生命值'] = 'hp_cur',
    ['生命上限']='hp_max',
    ['最大魔法']='mp_max',
    ['最大魔法值']='mp_max',
    ['当前魔法值'] = 'mp_cur',
    ['魔法值'] = 'mp_cur',
    ['魔法上限']='mp_max',
    ['生命恢复']='hp_rec',
    ['魔法恢复']='mp_rec',
    ['移动速度']='ori_speed',
    ['物理攻击']='attack_phy',
    ['物理防御']='defense_phy',
    ['物理穿透']='pene_phy',
    ['物理穿透%']='pene_phy_ratio',
    ['物理吸血']='vampire_phy',
    ['法术攻击']='attack_mag',
    ['法术防御']='defense_mag',
    ['法术穿透']='pene_mag',
    ['法术穿透%']='pene_mag_ratio',
    ['法术吸血']='vampire_mag',
    ['攻击速度']='attack_speed',
    ['暴击几率']='critical_chance',
    ['暴击倍率']='critical_dmg',
    ['冷却缩减']='cd_reduce',
    ['命中率']='hit_rate',
    ['闪避率']='dodge_rate',
    ['伤害增幅']='extra_dmg',
    ['伤害减免']='dmg_reduction',
    ['技能增益']='gainvalue',
    ['韧性']='resilience',
    ['治疗加成']='heal_effect',
    ['体型大小']='body_size',
    ['警戒范围']='alarm_range',
    ['取消警戒范围']='cancel_alarm_range',
    ['白天视野']='vision_rng',
    ['夜晚视野']='vision_night',
    ['转身速度']='rotate_speed',
	['力量'] = "strength",
	['敏捷'] = "agility",
	['智力'] = "intelligence",
	['主属性'] = "main",
    ['白天扇形视野半径'] = 'vision_sector_rng',
    ['白天扇形视野角度'] = 'vision_sector_angle_day',
    ['夜晚扇形视野半径'] = 'vision_sector_night',
    ['夜晚扇形视野角度'] = 'vision_sector_angle_night',
    ['当前弹药量'] = 'custom_2',
    ['换弹进度'] = 'custom_7',
}

ABILITY_FLOAT_ATTRS = {
    ['魔法消耗']='ability_cost',
    ['冷却时间']='cold_down_time',
    ['技能伤害']='ability_damage',
    ['施法距离']='ability_cast_range',

    ['施法开始时间']='ability_cast_point',
    ['施法引导时间']='ability_prepare_time',
    ['施法出手时间']='ability_channel_time',
    ['施法完成时间']='ability_bw_point',

    ['影响范围']='ability_damage_range',
    ['充能冷却']='ability_stack_cd',

    ['cost']='ability_cost',
    ['cd']='cold_down_time',
    ['damage']='ability_damage',
    ['range']='ability_cast_range',
    ['cast_time']='ability_cast_point',
    ['bw_time']='ability_bw_point',
    ['channel_time']='ability_channel_time',
    ['prepare_time']='ability_prepare_time',
    ['area']='ability_damage_range',
    ['stack_cd']='ability_stack_cd',
}

ABILITY_INT_ATTRS = {
    ['最大等级']='ability_max_level',
    ['学习等级']='required_level',
    ['消耗资源类型']='ability_cost_type',
    ['最大充能']='ability_max_stack_count',

    ['max_level']='ability_max_level',
    ['required_level']='required_level',
    ['cast_type']='ability_cost_type',
    ['max_stack']='ability_max_stack_count',
}

ABILITY_BOOL_ATTRS = {
    ['是否是被动']='is_passive',
    ['是否是普攻']='is_attack',
    ['是否是近战']='is_meele',
    ['是否显示施法条']='show_channel_bar',
    ['是否是开关技能']='is_toggle',

    ['is_passive']='is_passive',
    ['is_attack']='is_attack',
    ['is_meele']='is_meele',
    ['show_channel_bar']='show_channel_bar',
    ['is_toggle']='is_toggle',
}

SlotType = {
    ['地面'] = -1,
    ['背包'] = 0,
    ['物品栏'] = 1,
}

AbilityType = {
    ['隐藏'] = 0,
    ['普攻'] = 1,
    ['通用'] = 2,
    ['英雄'] = 3,
}

AbilityTypeId = {
    '隐藏','普攻','通用','英雄'
}

AbilityCastType = {
    ['普攻'] = 1,
    ['主动'] = 2,
    ['被动'] = 3,
    ['建造'] = 4,
    ['魔法书'] = 5,
}

AbilityCastTypeId = {
    '普攻','主动','被动','建造','魔法书'
}

KvType = {
    ['real'] = 'float',
    ['str'] = 'string',
    ['int'] = 'integer',
    ['string'] = 'string',
    ['integer'] = 'integer',
    ['bool'] = 'boolean',
    ['boolean'] = 'boolean',
    ['ui'] = 'ui_comp',
    ['unit'] = 'unit_entity',
    ['unitName'] = 'unit_name',
    ['unitType'] = 'unit_name',
    ['unitGroup'] = 'unit_group',
    ['item'] = 'item_entity',
    ['itemName'] = 'item_name',
    ['itemType'] = 'item_name',
    ['abilityType'] = 'ability_type',
    ['abilityCast'] = 'ability_cast_type',
    ['abilityName'] = 'ability_name',
    ['model'] = 'model',
    ['tech'] = 'tech_key',
    ['buff'] = 'modifier',
}

HarmTextType = {
    ['物理伤害'] = 1,
    ['物理暴击'] = 2,
    ['闪避'] = 3,
    ['治疗'] = 7,
    ['魔法伤害'] = 9,
    ['魔法暴击'] = 10,
    ['无敌'] = 17,
    ['真实伤害'] = 19,
    ['获取金币'] = 30,
    ['获取木材'] = 31,
}

RestrictionId = {
    ['禁止攻击'] = 2^1,
    ['禁止施法'] = 2^2,
    ['禁止移动'] = 2^3,
    ['禁止转向'] = 2^4,
    ['动画定帧'] = 2^5,
    ['无法施加运动'] = 2^6,
    ['无法被锁定'] = 2^7,
    ['无法被选中'] = 2^8,
    ['隐身'] = 2^9,
    ['无视静态阻挡'] = 2^10,
    ['无视动态阻挡'] = 2^11,
    ['免疫死亡'] = 2^12,
    ['无敌'] = 2^13,
    ['无法控制'] = 2^14,
    ['无法被攻击'] = 2^15,
    ['AI无视'] = 2^16,
    ['物理免疫'] = 2^17,
    ['魔法免疫'] = 2^18,
    ['负面魔法效果免疫'] = 2^19,
    ['隐藏'] = 2^20,
    ['无法被筛选'] = 2^21,
}

DamageAttackType = {
    [1] = 'phy',
    [2] = 'mag',
}

DamageArmorType = {
    [1] = 'phy',
    [2] = 'mag',
}

DamageArmorType = {
    [1] = 'phy',
    [2] = 'mag',
}

SignalVisibleType = {
    [1] = 'all',
    [2] = 'self',
    [3] = 'ally',
    [4] = 'enemy',
}

--UNIT_COMMAND = {
--    [1] = '移动',
--    [2] = '攻击移动',
--    [3] = '攻击目标',
--    [4] = '巡逻',
--    [5] = '停止',
--    [6] = '防守',
--    [7] = '施放技能',
--    [8] = '拾取物品',
--    [9] = '丢弃物品',
--    [10] = '给予物品',
--    [11] = '跟随',
--    [12] = '沿路径移动',
--}
