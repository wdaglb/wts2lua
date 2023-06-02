# Modifier
## 描述
效果触发器

-----
## 方法列表
方法名  | 简述  |
:----- | :--- |
[`api_add_buff_max_layer`](#api_add_buff_max_layer) | 增加buff最大层数 |
[`api_add_buff_layer`](#api_add_buff_layer) | 增加buff实例层数 |
[`api_add_buff_residue_time`](#api_add_buff_residue_time) | 增加buff的剩余持续时间 |
[`api_add_float_shield`](#api_add_float_shield) | 增加buff浮点属性效果 |
[`api_add_cycle_time`](#api_add_cycle_time) | 增加循环周期事件的循环时间 |
[`api_prevent_will_modifier`](#api_prevent_will_modifier) | 阻止即将获得的魔法效果 |
[`api_remove`](#api_remove) | 删除魔法效果 |
[`api_get_owner`](#api_get_owner) | 获取效果携带者 |
[`api_get_releaser`](#api_get_releaser) | 获取效果释放者 |
[`api_get_residue_time`](#api_get_residue_time) | 获取剩余持续时间 |
[`api_get_passed_time`](#api_get_passed_time) | 获取已经持续时间 |
[`api_get_int_attr`](#api_get_int_attr) | 获取buff整数属性效果 |
[`api_get_modifier_type`](#api_get_modifier_type) | 获取buff类别 |
[`api_get_modifier_effect_type`](#api_get_modifier_effect_type) | 获取buff影响类型 |
[`api_get_float_attr`](#api_get_float_attr) | 获取buff浮点属性效果 |
[`api_get_cycle_time`](#api_get_cycle_time) | 获取buff循环周期 |
[`api_get_sub_halo_modifier_key`](#api_get_sub_halo_modifier_key) | 获取光环魔法效果的子光环类型 |
[`api_get_halo_modifier_instance`](#api_get_halo_modifier_instance) | 获取子光环的光环实体 |
[`api_get_halo_inf_rng`](#api_get_halo_inf_rng) | 获取光环的范围 |
[`api_get_will_modifier_unit`](#api_get_will_modifier_unit) | 获取即将获得魔法效果的单位 |
[`api_get_will_modifier_key`](#api_get_will_modifier_key) | 获取即将获得魔法效果类型 |
[`api_get_modifier_unique_id`](#api_get_modifier_unique_id) | 获取buff的唯一id |
[`api_get_modifier_key`](#api_get_modifier_key) | 获取buff的类型key |
[`api_get_str_attr`](#api_get_str_attr) | 获取buff字符属性效果 |
[`api_get_icon_is_visible`](#api_get_icon_is_visible) | 获取buff图标是否可见 |
[`api_get_modifier_level`](#api_get_modifier_level) | 获取魔法效果等级 |
[`api_get_modifier_layer`](#api_get_modifier_layer) | 获取魔法效果的堆叠层数 |
[`api_set_buff_max_layer`](#api_set_buff_max_layer) | 设置buff整数属性效果 |
[`api_set_buff_layer`](#api_set_buff_layer) | 设置buff实例层数 |
[`api_set_buff_residue_time`](#api_set_buff_residue_time) | 设置buff的剩余持续时间 |
[`api_set_float_shield`](#api_set_float_shield) | 设置buff浮点属性效果 |
[`api_set_cycle_time`](#api_set_cycle_time) | 设置循环周期事件 |
[`api_set_duration`](#api_set_duration) | 设置魔法效果的持续时间 |
[`api_set_buff_str_attr`](#api_set_buff_str_attr) | 设置buff的字符串属性 |
[`api_play_sound_by_mod_for_role_relation`](#api_play_sound_by_mod_for_role_relation) | 对魔法效果所属单位的所属玩家关系播放音乐 |


-----
## 方法

### `api_add_buff_max_layer` <span id="api_add_buff_max_layer"></span>
##### **描述**
增加buff最大层数
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`attr_num` | 整数属性值  | [`UInt32`](../etype#UInt32) | 

##### **返回值**
无

### `api_add_buff_layer` <span id="api_add_buff_layer"></span>
##### **描述**
增加buff实例层数
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`plus_layer` | 整数属性值  | [`Int64`](../etype#Int64) | 

##### **返回值**
无

### `api_add_buff_residue_time` <span id="api_add_buff_residue_time"></span>
##### **描述**
增加buff的剩余持续时间
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`residue_time` | 浮点数剩余时间  | [`Fixed`](../etype#Fixed) | 

##### **返回值**
无

### `api_add_float_shield` <span id="api_add_float_shield"></span>
##### **描述**
增加buff浮点属性效果
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`attr_name` | 属性名称  | [`Str`](../etype#Str) | 
`attr_num` | 浮点数属性值  | [`Fixed`](../etype#Fixed) | 

##### **返回值**
无

### `api_add_cycle_time` <span id="api_add_cycle_time"></span>
##### **描述**
增加循环周期事件的循环时间
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`add_cycle_time` | 浮点数属性值  | [`Fixed`](../etype#Fixed) | 

##### **返回值**
无

### `api_prevent_will_modifier` <span id="api_prevent_will_modifier"></span>
##### **描述**
阻止即将获得的魔法效果
##### **参数**
无

##### **返回值**
`Bool` : 返回值

### `api_remove` <span id="api_remove"></span>
##### **描述**
删除魔法效果
##### **参数**
无

##### **返回值**
`Bool` : 返回值

### `api_get_owner` <span id="api_get_owner"></span>
##### **描述**
获取效果携带者
##### **参数**
无

##### **返回值**
`Unit` : 效果携带者

### `api_get_releaser` <span id="api_get_releaser"></span>
##### **描述**
获取效果释放者
##### **参数**
无

##### **返回值**
`Unit` : 效果释放者

### `api_get_residue_time` <span id="api_get_residue_time"></span>
##### **描述**
获取剩余持续时间
##### **参数**
无

##### **返回值**
`Fixed` : 剩余持续时间

### `api_get_passed_time` <span id="api_get_passed_time"></span>
##### **描述**
获取已经持续时间
##### **参数**
无

##### **返回值**
`Fixed` : 已经持续时间

### `api_get_int_attr` <span id="api_get_int_attr"></span>
##### **描述**
获取buff整数属性效果
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`attr_name` | 属性名称  | [`Str`](../etype#Str) | 

##### **返回值**
`UInt32` : 整数类型返回值

### `api_get_modifier_type` <span id="api_get_modifier_type"></span>
##### **描述**
获取buff类别
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`attr_name` | 属性名称  | [`Str`](../etype#Str) | 

##### **返回值**
`ModifierType` : 魔法效果类别

### `api_get_modifier_effect_type` <span id="api_get_modifier_effect_type"></span>
##### **描述**
获取buff影响类型
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`attr_name` | 属性名称  | [`Str`](../etype#Str) | 

##### **返回值**
`ModifierEffectType` : 魔法效果影响类别

### `api_get_float_attr` <span id="api_get_float_attr"></span>
##### **描述**
获取buff浮点属性效果
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`attr_name` | 属性名称  | [`Str`](../etype#Str) | 

##### **返回值**
`Fixed` : 浮点数返回类型

### `api_get_cycle_time` <span id="api_get_cycle_time"></span>
##### **描述**
获取buff循环周期
##### **参数**
无

##### **返回值**
`Fixed` : 浮点数返回类型

### `api_get_sub_halo_modifier_key` <span id="api_get_sub_halo_modifier_key"></span>
##### **描述**
获取光环魔法效果的子光环类型
##### **参数**
无

##### **返回值**
`ModifierKey` : 魔法效果编号

### `api_get_halo_modifier_instance` <span id="api_get_halo_modifier_instance"></span>
##### **描述**
获取子光环的光环实体
##### **参数**
无

##### **返回值**
`ModifierEntity` : 魔法效果对象

### `api_get_halo_inf_rng` <span id="api_get_halo_inf_rng"></span>
##### **描述**
获取光环的范围
##### **参数**
无

##### **返回值**
`Float` : 光环影响范围

### `api_get_will_modifier_unit` <span id="api_get_will_modifier_unit"></span>
##### **描述**
获取即将获得魔法效果的单位
##### **参数**
无

##### **返回值**
`Unit` : 单位

### `api_get_will_modifier_key` <span id="api_get_will_modifier_key"></span>
##### **描述**
获取即将获得魔法效果类型
##### **参数**
无

##### **返回值**
`ModifierKey` : 魔法效果编号

### `api_get_modifier_unique_id` <span id="api_get_modifier_unique_id"></span>
##### **描述**
获取buff的唯一id
##### **参数**
无

##### **返回值**
`UInt32` : 魔法效果唯一ID

### `api_get_modifier_key` <span id="api_get_modifier_key"></span>
##### **描述**
获取buff的类型key
##### **参数**
无

##### **返回值**
`ModifierKey` : 魔法效果key

### `api_get_str_attr` <span id="api_get_str_attr"></span>
##### **描述**
获取buff字符属性效果
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`attr_name` | 属性名称  | [`Str`](../etype#Str) | 

##### **返回值**
`Str` : 字符类型返回值

### `api_get_icon_is_visible` <span id="api_get_icon_is_visible"></span>
##### **描述**
获取buff图标是否可见
##### **参数**
无

##### **返回值**
`Bool` : 布尔值

### `api_get_modifier_level` <span id="api_get_modifier_level"></span>
##### **描述**
获取魔法效果等级
##### **参数**
无

##### **返回值**
`Int64` : 等级

### `api_get_modifier_layer` <span id="api_get_modifier_layer"></span>
##### **描述**
获取魔法效果的堆叠层数
##### **参数**
无

##### **返回值**
`Int64` : 堆叠层数

### `api_set_buff_max_layer` <span id="api_set_buff_max_layer"></span>
##### **描述**
设置buff整数属性效果
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`attr_num` | 整数属性值  | [`UInt32`](../etype#UInt32) | 

##### **返回值**
无

### `api_set_buff_layer` <span id="api_set_buff_layer"></span>
##### **描述**
设置buff实例层数
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`attr_num` | 整数属性值  | [`UInt32`](../etype#UInt32) | 

##### **返回值**
无

### `api_set_buff_residue_time` <span id="api_set_buff_residue_time"></span>
##### **描述**
设置buff的剩余持续时间
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`residue_time` | 浮点数剩余时间  | [`Fixed`](../etype#Fixed) | 

##### **返回值**
无

### `api_set_float_shield` <span id="api_set_float_shield"></span>
##### **描述**
设置buff浮点属性效果
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`attr_name` | 属性名称  | [`Str`](../etype#Str) | 
`attr_num` | 浮点数属性值  | [`Fixed`](../etype#Fixed) | 

##### **返回值**
无

### `api_set_cycle_time` <span id="api_set_cycle_time"></span>
##### **描述**
设置循环周期事件
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`new_cycle_time` | 浮点数属性值  | [`Fixed`](../etype#Fixed) | 

##### **返回值**
无

### `api_set_duration` <span id="api_set_duration"></span>
##### **描述**
设置魔法效果的持续时间
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`residue_time` | 非负数实数值  | [`Fixed`](../etype#Fixed) | 

##### **返回值**
无

### `api_set_buff_str_attr` <span id="api_set_buff_str_attr"></span>
##### **描述**
设置buff的字符串属性
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`name` | 属性名称  | [`Str`](../etype#Str) | 
`value` | 属性值  | [`Str`](../etype#Str) | 

##### **返回值**
无

### `api_play_sound_by_mod_for_role_relation` <span id="api_play_sound_by_mod_for_role_relation"></span>
##### **描述**
对魔法效果所属单位的所属玩家关系播放音乐
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`camp_target` | 玩家关系  | [`RoleRelation`](../etype#RoleRelation) | 
`sid` | 乐曲编号  | [`AudioKey`](../etype#AudioKey) | 
`loop` | 是否循环  | [`Bool`](../etype#Bool) | 

##### **返回值**
无
