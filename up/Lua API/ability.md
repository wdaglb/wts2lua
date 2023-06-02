# Ability
## 描述
技能

-----
## 方法列表
方法名  | 简述  |
:----- | :--- |
[`api_get_str_attr`](#api_get_str_attr) | 获取技能字符串属性 |
[`api_set_str_attr`](#api_set_str_attr) | 设置技能字符串属性 |
[`api_set_name`](#api_set_name) | 设置技能名字 |
[`api_get_owner`](#api_get_owner) | 获取技能拥有者 |
[`api_get_owner_id`](#api_get_owner_id) | 获取技能拥有者id |
[`api_get_type`](#api_get_type) | 获取技能类型 |
[`api_get_ability_index`](#api_get_ability_index) | 获取技能类型 |
[`api_get_ability_seq`](#api_get_ability_seq) | 获取技能拥有者 |
[`api_get_ability_cast_type`](#api_get_ability_cast_type) | 获取技能释放类型 |
[`api_remove`](#api_remove) | 移除技能 |
[`api_get_level`](#api_get_level) | 获取技能的等级 |
[`has_tag`](#has_tag) | 是否拥有标记 |
[`api_remove_kv`](#api_remove_kv) | 移除键值对 |
[`api_calc_ability_formula_kv`](#api_calc_ability_formula_kv) | 计算公式类型KV |
[`add_timer`](#add_timer) | 添加定时器 |
[`api_has_target`](#api_has_target) | 技能对象是否拥有目标 |
[`api_get_release_position`](#api_get_release_position) | 获取技能释放的位置 |
[`api_get_release_direction`](#api_get_release_direction) | 获取技能释放的方向 |
[`api_get_float_attr`](#api_get_float_attr) | 获取技能实数属性值 |
[`api_get_int_attr`](#api_get_int_attr) | 获取技能整数属性值 |
[`api_get_bool_attr`](#api_get_bool_attr) | 获取技能布尔属性值 |
[`api_get_ability_cast_range`](#api_get_ability_cast_range) | 获取技能释放范围 |
[`api_set_ability_cast_range`](#api_set_ability_cast_range) | 设置技能释放范围 |
[`api_set_ability_sector_radius`](#api_set_ability_sector_radius) | 设置扇形指示器半径 |
[`api_set_ability_sector_angle`](#api_set_ability_sector_angle) | 设置扇形指示器角度 |
[`api_set_ability_arrow_width`](#api_set_ability_arrow_width) | 设置箭头/多段指示器宽度 |
[`api_set_ability_arrow_length`](#api_set_ability_arrow_length) | 设置箭头/多段指示器长度 |
[`api_set_ability_circle_radius`](#api_set_ability_circle_radius) | 设置圆形指示器半径 |
[`api_set_ability_pointer_type`](#api_set_ability_pointer_type) | 设置技能指示器类型 |
[`api_get_ability_player_attr_cost`](#api_get_ability_player_attr_cost) | 获取技能玩家属性消耗 |
[`api_set_ability_player_attr_cost`](#api_set_ability_player_attr_cost) | 设置技能玩家属性消耗 |
[`api_add_ability_player_attr_cost`](#api_add_ability_player_attr_cost) | 增加技能玩家属性消耗 |
[`api_set_level`](#api_set_level) | 设置技能等级 |
[`api_learn_ability`](#api_learn_ability) | 学习技能 |
[`api_add_level`](#api_add_level) | 增加技能等级 |
[`api_add_float_attr`](#api_add_float_attr) | 增量修改技能实数属性值 |
[`api_set_float_attr`](#api_set_float_attr) | 设置技能实数属性值 |
[`api_add_int_attr`](#api_add_int_attr) | 增量修改技能整数属性值 |
[`api_set_int_attr`](#api_set_int_attr) | 设置技能整数属性值 |
[`api_set_bool_attr`](#api_set_bool_attr) | 设置技能布尔属性值 |
[`api_break_ability_in_cs`](#api_break_ability_in_cs) | 阻止当前技能施法 |
[`api_get_ability_id`](#api_get_ability_id) | 获取技能编号 |
[`api_is_melee_ability`](#api_is_melee_ability) | 是否是近战技能 |
[`api_is_common_atk`](#api_is_common_atk) | 是否是普攻 |
[`is_passive_ability`](#is_passive_ability) | 是否是被动 |
[`api_get_cost_hp_can_die`](#api_get_cost_hp_can_die) | 获取消耗生命是否致死 |
[`api_set_cost_hp_can_die`](#api_set_cost_hp_can_die) | 设置消耗生命是否致死 |
[`api_get_can_cast_when_hp_insufficient`](#api_get_can_cast_when_hp_insufficient) | 获取生命不足能否施放 |
[`api_set_can_cast_when_hp_insufficient`](#api_set_can_cast_when_hp_insufficient) | 设置生命不足能否施放 |
[`api_get_name`](#api_get_name) | 获取技能名称 |
[`api_set_influenced_by_cd_reduce`](#api_set_influenced_by_cd_reduce) | 设置技能是否受冷却缩减影响 |
[`api_get_influenced_by_cd_reduce`](#api_get_influenced_by_cd_reduce) | 是否受冷却缩减影响 |
[`api_get_ability_stack`](#api_get_ability_stack) | 获取技能的充能层数 |
[`api_add_ability_stack_count`](#api_add_ability_stack_count) | 增加技能充能层数 |
[`api_set_ability_stack_count`](#api_set_ability_stack_count) | 设置技能充能层数 |
[`api_get_cd_left_time`](#api_get_cd_left_time) | 获取当前技能剩余冷却时间 |
[`api_immediately_clear_cd`](#api_immediately_clear_cd) | 技能立即冷却 |
[`api_change_ability_cd_cold_down`](#api_change_ability_cd_cold_down) | 改变技能冷却时间 |
[`api_set_ability_cd`](#api_set_ability_cd) | 设置技能冷却时间 |
[`api_add_ability_cd`](#api_add_ability_cd) | 增加技能冷却时间 |
[`api_restart_cd`](#api_restart_cd) | 从头开始冷却 |
[`api_set_ability_cur_stack_cd`](#api_set_ability_cur_stack_cd) | 改变当次充能时间 |
[`api_get_stack_cd_left_time`](#api_get_stack_cd_left_time) | 获取技能当前剩余充能时间 |
[`api_enable`](#api_enable) | 启用技能 |
[`api_disable`](#api_disable) | 禁用技能 |
[`api_play_sound_by_ability_for_role_relation`](#api_play_sound_by_ability_for_role_relation) | 对技能所属单位的所属玩家关系播放音乐 |


-----
## 方法

### `api_get_str_attr` <span id="api_get_str_attr"></span>
##### **描述**
获取技能字符串属性
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`attr` | 标记名  | [`AbilityStrAttr`](../etype#AbilityStrAttr) | 

##### **返回值**
`Str` : 字符串属性

### `api_set_str_attr` <span id="api_set_str_attr"></span>
##### **描述**
设置技能字符串属性
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`attr` | 标记名  | [`AbilityStrAttr`](../etype#AbilityStrAttr) | 
`value` | 字符串值  | [`Str`](../etype#Str) | 

##### **返回值**
无

### `api_set_name` <span id="api_set_name"></span>
##### **描述**
设置技能名字
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`value` | 字符串值  | [`Str`](../etype#Str) | 

##### **返回值**
无

### `api_get_owner` <span id="api_get_owner"></span>
##### **描述**
获取技能拥有者
##### **参数**
无

##### **返回值**
`Unit` : 技能拥有者

### `api_get_owner_id` <span id="api_get_owner_id"></span>
##### **描述**
获取技能拥有者id
##### **参数**
无

##### **返回值**
`UnitID` : 技能拥有者id

### `api_get_type` <span id="api_get_type"></span>
##### **描述**
获取技能类型
##### **参数**
无

##### **返回值**
`AbilityType` : 技能类型

### `api_get_ability_index` <span id="api_get_ability_index"></span>
##### **描述**
获取技能类型
##### **参数**
无

##### **返回值**
`AbilityIndex` : 技能序号

### `api_get_ability_seq` <span id="api_get_ability_seq"></span>
##### **描述**
获取技能拥有者
##### **参数**
无

##### **返回值**
`AbilitySeq` : 技能Seq

### `api_get_ability_cast_type` <span id="api_get_ability_cast_type"></span>
##### **描述**
获取技能释放类型
##### **参数**
无

##### **返回值**
`AbilityCastType` : 技能释放类型

### `api_remove` <span id="api_remove"></span>
##### **描述**
移除技能
##### **参数**
无

##### **返回值**
无

### `api_get_level` <span id="api_get_level"></span>
##### **描述**
获取技能的等级
##### **参数**
无

##### **返回值**
`Int32` : 技能等级

### `has_tag` <span id="has_tag"></span>
##### **描述**
是否拥有标记
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`tag` | 标记名  | [`Str`](../etype#Str) | 

##### **返回值**
`Bool` : 是否有标记

### `api_remove_kv` <span id="api_remove_kv"></span>
##### **描述**
移除键值对
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`k` | 键  | [`Str`](../etype#Str) | 

##### **返回值**
无

### `api_calc_ability_formula_kv` <span id="api_calc_ability_formula_kv"></span>
##### **描述**
计算公式类型KV
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`k` | 键  | [`Str`](../etype#Str) | 

##### **返回值**
`Fixed` : 值

### `add_timer` <span id="add_timer"></span>
##### **描述**
添加定时器
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`time` | 定时时长  | [`Fixed`](../etype#Fixed) | 
`callback` | 超时函数  | [`Function`](../etype#Function) | 

##### **返回值**
无

### `api_has_target` <span id="api_has_target"></span>
##### **描述**
技能对象是否拥有目标
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`runtime_id` | runtime_id  | [`Int32`](../etype#Int32) | None

##### **返回值**
`Bool` : 技能对象是否拥有目标

### `api_get_release_position` <span id="api_get_release_position"></span>
##### **描述**
获取技能释放的位置
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`runtime_id` | runtime_id  | [`Int32`](../etype#Int32) | None

##### **返回值**
`FPoint` : 技能释放的位置

### `api_get_release_direction` <span id="api_get_release_direction"></span>
##### **描述**
获取技能释放的方向
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`runtime_id` | runtime_id  | [`Int32`](../etype#Int32) | None

##### **返回值**
`Fixed` : 技能释放的方向

### `api_get_float_attr` <span id="api_get_float_attr"></span>
##### **描述**
获取技能实数属性值
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`attr` | 属性名  | [`Str`](../etype#Str) | 

##### **返回值**
`Fixed` : 实数属性值

### `api_get_int_attr` <span id="api_get_int_attr"></span>
##### **描述**
获取技能整数属性值
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`attr` | 属性名  | [`Str`](../etype#Str) | 

##### **返回值**
`Int32` : 整数属性值

### `api_get_bool_attr` <span id="api_get_bool_attr"></span>
##### **描述**
获取技能布尔属性值
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`attr` | 属性名  | [`Str`](../etype#Str) | 

##### **返回值**
`Bool` : 布尔属性值

### `api_get_ability_cast_range` <span id="api_get_ability_cast_range"></span>
##### **描述**
获取技能释放范围
##### **参数**
无

##### **返回值**
`Fixed` : 释放范围

### `api_set_ability_cast_range` <span id="api_set_ability_cast_range"></span>
##### **描述**
设置技能释放范围
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`value` | 释放范围  | [`Fixed`](../etype#Fixed) | 

##### **返回值**
无

### `api_set_ability_sector_radius` <span id="api_set_ability_sector_radius"></span>
##### **描述**
设置扇形指示器半径
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`value` | 指示器半径  | [`Fixed`](../etype#Fixed) | 

##### **返回值**
无

### `api_set_ability_sector_angle` <span id="api_set_ability_sector_angle"></span>
##### **描述**
设置扇形指示器角度
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`value` | 指示器角度  | [`Fixed`](../etype#Fixed) | 

##### **返回值**
无

### `api_set_ability_arrow_width` <span id="api_set_ability_arrow_width"></span>
##### **描述**
设置箭头/多段指示器宽度
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`value` | 释放范围  | [`Fixed`](../etype#Fixed) | 

##### **返回值**
无

### `api_set_ability_arrow_length` <span id="api_set_ability_arrow_length"></span>
##### **描述**
设置箭头/多段指示器长度
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`value` | 释放范围  | [`Fixed`](../etype#Fixed) | 

##### **返回值**
无

### `api_set_ability_circle_radius` <span id="api_set_ability_circle_radius"></span>
##### **描述**
设置圆形指示器半径
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`value` | 释放范围  | [`Fixed`](../etype#Fixed) | 

##### **返回值**
无

### `api_set_ability_pointer_type` <span id="api_set_ability_pointer_type"></span>
##### **描述**
设置技能指示器类型
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`pointer_type` | 释放范围  | [`Fixed`](../etype#Fixed) | 

##### **返回值**
无

### `api_get_ability_player_attr_cost` <span id="api_get_ability_player_attr_cost"></span>
##### **描述**
获取技能玩家属性消耗
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`attr` | 玩家属性名  | [`Str`](../etype#Str) | 

##### **返回值**
`Fixed` : 玩家属性消耗

### `api_set_ability_player_attr_cost` <span id="api_set_ability_player_attr_cost"></span>
##### **描述**
设置技能玩家属性消耗
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`attr` | 玩家属性名  | [`Str`](../etype#Str) | 
`value` | 玩家属性消耗  | [`Fixed`](../etype#Fixed) | 

##### **返回值**
无

### `api_add_ability_player_attr_cost` <span id="api_add_ability_player_attr_cost"></span>
##### **描述**
增加技能玩家属性消耗
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`attr` | 玩家属性名  | [`Str`](../etype#Str) | 
`value` | 玩家属性消耗  | [`Fixed`](../etype#Fixed) | 

##### **返回值**
无

### `api_set_level` <span id="api_set_level"></span>
##### **描述**
设置技能等级
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`level` | 技能等级  | [`Int32`](../etype#Int32) | 

##### **返回值**
无

### `api_learn_ability` <span id="api_learn_ability"></span>
##### **描述**
学习技能
##### **参数**
无

##### **返回值**
无

### `api_add_level` <span id="api_add_level"></span>
##### **描述**
增加技能等级
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`level` | 技能等级  | [`Int32`](../etype#Int32) | 

##### **返回值**
无

### `api_add_float_attr` <span id="api_add_float_attr"></span>
##### **描述**
增量修改技能实数属性值
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`attr` | 属性名  | [`Str`](../etype#Str) | 
`value` | 实数属性值  | [`Fixed`](../etype#Fixed) | 

##### **返回值**
无

### `api_set_float_attr` <span id="api_set_float_attr"></span>
##### **描述**
设置技能实数属性值
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`attr` | 属性名  | [`Str`](../etype#Str) | 
`value` | 实数属性值  | [`Fixed`](../etype#Fixed) | 

##### **返回值**
无

### `api_add_int_attr` <span id="api_add_int_attr"></span>
##### **描述**
增量修改技能整数属性值
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`attr` | 属性名  | [`Str`](../etype#Str) | 
`value` | 整数属性值  | [`Int32`](../etype#Int32) | 

##### **返回值**
无

### `api_set_int_attr` <span id="api_set_int_attr"></span>
##### **描述**
设置技能整数属性值
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`attr` | 属性名  | [`Str`](../etype#Str) | 
`value` | 整数属性值  | [`Int32`](../etype#Int32) | 

##### **返回值**
无

### `api_set_bool_attr` <span id="api_set_bool_attr"></span>
##### **描述**
设置技能布尔属性值
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`attr` | 属性名  | [`Str`](../etype#Str) | 
`value` | 布尔属性值  | [`Bool`](../etype#Bool) | 

##### **返回值**
无

### `api_break_ability_in_cs` <span id="api_break_ability_in_cs"></span>
##### **描述**
阻止当前技能施法
##### **参数**
无

##### **返回值**
无

### `api_get_ability_id` <span id="api_get_ability_id"></span>
##### **描述**
获取技能编号
##### **参数**
无

##### **返回值**
`AbilityKey` : 技能编号

### `api_is_melee_ability` <span id="api_is_melee_ability"></span>
##### **描述**
是否是近战技能
##### **参数**
无

##### **返回值**
`Bool` : 布尔值

### `api_is_common_atk` <span id="api_is_common_atk"></span>
##### **描述**
是否是普攻
##### **参数**
无

##### **返回值**
`Bool` : 布尔值

### `is_passive_ability` <span id="is_passive_ability"></span>
##### **描述**
是否是被动
##### **参数**
无

##### **返回值**
`Bool` : 布尔值

### `api_get_cost_hp_can_die` <span id="api_get_cost_hp_can_die"></span>
##### **描述**
获取消耗生命是否致死
##### **参数**
无

##### **返回值**
`Bool` : 消耗生命是否致死

### `api_set_cost_hp_can_die` <span id="api_set_cost_hp_can_die"></span>
##### **描述**
设置消耗生命是否致死
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`value` | 能否释放  | [`Bool`](../etype#Bool) | 

##### **返回值**
无

### `api_get_can_cast_when_hp_insufficient` <span id="api_get_can_cast_when_hp_insufficient"></span>
##### **描述**
获取生命不足能否施放
##### **参数**
无

##### **返回值**
`Bool` : 生命不足能否施放

### `api_set_can_cast_when_hp_insufficient` <span id="api_set_can_cast_when_hp_insufficient"></span>
##### **描述**
设置生命不足能否施放
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`value` | 能否释放  | [`Bool`](../etype#Bool) | 

##### **返回值**
无

### `api_get_name` <span id="api_get_name"></span>
##### **描述**
获取技能名称
##### **参数**
无

##### **返回值**
`Str` : 技能名称

### `api_set_influenced_by_cd_reduce` <span id="api_set_influenced_by_cd_reduce"></span>
##### **描述**
设置技能是否受冷却缩减影响
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`value` | 布尔属性值  | [`Bool`](../etype#Bool) | 

##### **返回值**
无

### `api_get_influenced_by_cd_reduce` <span id="api_get_influenced_by_cd_reduce"></span>
##### **描述**
是否受冷却缩减影响
##### **参数**
无

##### **返回值**
`Bool` : 布尔值

### `api_get_ability_stack` <span id="api_get_ability_stack"></span>
##### **描述**
获取技能的充能层数
##### **参数**
无

##### **返回值**
`Int32` : 技能层数

### `api_add_ability_stack_count` <span id="api_add_ability_stack_count"></span>
##### **描述**
增加技能充能层数
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`value` | 充能层数  | [`Int32`](../etype#Int32) | 

##### **返回值**
无

### `api_set_ability_stack_count` <span id="api_set_ability_stack_count"></span>
##### **描述**
设置技能充能层数
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`value` | 充能层数  | [`Int32`](../etype#Int32) | 

##### **返回值**
无

### `api_get_cd_left_time` <span id="api_get_cd_left_time"></span>
##### **描述**
获取当前技能剩余冷却时间
##### **参数**
无

##### **返回值**
`Fixed` : 剩余冷却时间

### `api_immediately_clear_cd` <span id="api_immediately_clear_cd"></span>
##### **描述**
技能立即冷却
##### **参数**
无

##### **返回值**
无

### `api_change_ability_cd_cold_down` <span id="api_change_ability_cd_cold_down"></span>
##### **描述**
改变技能冷却时间
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`value` | 冷却时间  | [`Fixed`](../etype#Fixed) | 

##### **返回值**
无

### `api_set_ability_cd` <span id="api_set_ability_cd"></span>
##### **描述**
设置技能冷却时间
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`value` | 冷却时间  | [`Fixed`](../etype#Fixed) | 

##### **返回值**
无

### `api_add_ability_cd` <span id="api_add_ability_cd"></span>
##### **描述**
增加技能冷却时间
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`value` | 冷却时间  | [`Fixed`](../etype#Fixed) | 

##### **返回值**
无

### `api_restart_cd` <span id="api_restart_cd"></span>
##### **描述**
从头开始冷却
##### **参数**
无

##### **返回值**
无

### `api_set_ability_cur_stack_cd` <span id="api_set_ability_cur_stack_cd"></span>
##### **描述**
改变当次充能时间
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`value` | 冷却时间  | [`Fixed`](../etype#Fixed) | 

##### **返回值**
无

### `api_get_stack_cd_left_time` <span id="api_get_stack_cd_left_time"></span>
##### **描述**
获取技能当前剩余充能时间
##### **参数**
无

##### **返回值**
`Fixed` : 剩余充能时间

### `api_enable` <span id="api_enable"></span>
##### **描述**
启用技能
##### **参数**
无

##### **返回值**
无

### `api_disable` <span id="api_disable"></span>
##### **描述**
禁用技能
##### **参数**
无

##### **返回值**
无

### `api_play_sound_by_ability_for_role_relation` <span id="api_play_sound_by_ability_for_role_relation"></span>
##### **描述**
对技能所属单位的所属玩家关系播放音乐
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`camp_target` | 玩家关系  | [`RoleRelation`](../etype#RoleRelation) | 
`sid` | 乐曲编号  | [`AudioKey`](../etype#AudioKey) | 
`loop` | 是否循环  | [`Bool`](../etype#Bool) | 

##### **返回值**
无
