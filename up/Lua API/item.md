# Item
## 描述
物品

-----
## 方法列表
方法名  | 简述  |
:----- | :--- |
[`api_get_key`](#api_get_key) | 获取物品编号 |
[`set_name`](#set_name) | 设置物品名称 |
[`get_name`](#get_name) | 获取物品名称 |
[`api_get_conf_name`](#api_get_conf_name) | 获取物品配置名称 |
[`api_set_desc`](#api_set_desc) | 设置物品描述 |
[`api_get_desc`](#api_get_desc) | 获取物品描述 |
[`api_get_conf_desc`](#api_get_conf_desc) | 获取物品配置描述 |
[`api_get_type`](#api_get_type) | 获取物品类型 |
[`api_get_level`](#api_get_level) | 获取物品等级 |
[`api_set_level`](#api_set_level) | 设置物品等级 |
[`api_drop_self`](#api_drop_self) | 丢弃物品 |
[`api_remove`](#api_remove) | 从单位身上移除物品 |
[`api_set_sale_state`](#api_set_sale_state) | 设置物品出售 |
[`api_set_stack_cnt`](#api_set_stack_cnt) | 设置物品堆叠数 |
[`api_set_charge_cnt`](#api_set_charge_cnt) | 设置物品充能数 |
[`api_set_max_charge`](#api_set_max_charge) | 设置物品最大充能数 |
[`api_get_position`](#api_get_position) | 获取物品位置 |
[`api_is_in_scene`](#api_is_in_scene) | 物品是否在场景中 |
[`api_get_stack_cnt`](#api_get_stack_cnt) | 获取物品堆叠数 |
[`api_get_stack_type`](#api_get_stack_type) | 获取物品堆叠类型 |
[`api_get_charge_cnt`](#api_get_charge_cnt) | 获取物品充能数 |
[`api_get_max_charge`](#api_get_max_charge) | 获取物品充能数 |
[`api_set_droppable`](#api_set_droppable) | 设置物品丢弃 |
[`api_set_sellable`](#api_set_sellable) | 设置物品出售 |
[`api_set_hp`](#api_set_hp) | 设置物品生命值 |
[`api_get_droppable`](#api_get_droppable) | 获取物品丢弃 |
[`api_get_sellable`](#api_get_sellable) | 获取物品出售 |
[`api_get_hp`](#api_get_hp) | 获取物品生命值 |
[`api_set_attr`](#api_set_attr) | 设置物品附加属性 |
[`api_change_attr`](#api_change_attr) | 增加物品附加属性 |
[`api_get_attr`](#api_get_attr) | 获取物品附加属性 |
[`api_set_creator`](#api_set_creator) | 设置物品所有者 |
[`api_get_creator`](#api_get_creator) | 获得物品所有者 |
[`api_get_owner`](#api_get_owner) | 获得物品拥有者 |
[`api_add_stack`](#api_add_stack) | 添加物品堆叠数 |
[`api_add_charge`](#api_add_charge) | 添加物品充能数 |
[`api_get_scale`](#api_get_scale) | 获取物品缩放 |
[`api_get_face_angle`](#api_get_face_angle) | 获取物品朝向 |
[`api_set_scale`](#api_set_scale) | 设置物品缩放 |
[`api_set_position`](#api_set_position) | 设置物品位置 |
[`api_set_face_angle`](#api_set_face_angle) | 设置物品朝向 |
[`api_is_in_area`](#api_is_in_area) | 是否在区域内 |
[`api_transmit`](#api_transmit) | 移动物品到点 |
[`api_add_tag`](#api_add_tag) | 物品添加标签 |
[`api_remove_tag`](#api_remove_tag) | 物品删除标签 |
[`api_has_tag`](#api_has_tag) | 物品是否拥有标签 |
[`api_remove_kv`](#api_remove_kv) | 物品移除键值对 |
[`api_get_item_unit`](#api_get_item_unit) | 获取物品在场景中的对应实体 |
[`api_get_id`](#api_get_id) | 获取物品id |
[`api_is_in_bar`](#api_is_in_bar) | 物品是否在物品栏 |
[`api_is_in_pkg`](#api_is_in_pkg) | 物品是否在背包栏中 |
[`api_play_sound_by_item_for_role_relation`](#api_play_sound_by_item_for_role_relation) | 对物品所属单位的所属玩家关系播放音乐 |
[`api_get_positive_ability`](#api_get_positive_ability) | 获取物品的主动技能 |
[`api_get_passive_ability`](#api_get_passive_ability) | 获取物品的被动技能 |
[`api_set_item_icon`](#api_set_item_icon) | 设置物品的图标为图片 |
[`api_get_item_icon`](#api_get_item_icon) | 获取物品的图标 |
[`api_get_item_slot_type`](#api_get_item_slot_type) | 物品所在背包槽位类型 |
[`api_get_item_slot_idx`](#api_get_item_slot_idx) | 物品所在的格子位置索引 |
[`api_item_add_passive_ability`](#api_item_add_passive_ability) | 物品实例添加被动技能 |


-----
## 方法

### `api_get_key` <span id="api_get_key"></span>
##### **描述**
获取物品编号
##### **参数**
无

##### **返回值**
`ItemKey` : 物品编号

### `set_name` <span id="set_name"></span>
##### **描述**
设置物品名称
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`name` | 物品名称  | [`Str`](../etype#Str) | 

##### **返回值**
无

### `get_name` <span id="get_name"></span>
##### **描述**
获取物品名称
##### **参数**
无

##### **返回值**
`Str` : 物品名称

### `api_get_conf_name` <span id="api_get_conf_name"></span>
##### **描述**
获取物品配置名称
##### **参数**
无

##### **返回值**
`Str` : 物品名称

### `api_set_desc` <span id="api_set_desc"></span>
##### **描述**
设置物品描述
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`desc` | 物品描述  | [`Str`](../etype#Str) | 

##### **返回值**
无

### `api_get_desc` <span id="api_get_desc"></span>
##### **描述**
获取物品描述
##### **参数**
无

##### **返回值**
`Str` : 物品描述

### `api_get_conf_desc` <span id="api_get_conf_desc"></span>
##### **描述**
获取物品配置描述
##### **参数**
无

##### **返回值**
`Str` : 物品描述

### `api_get_type` <span id="api_get_type"></span>
##### **描述**
获取物品类型
##### **参数**
无

##### **返回值**
`UInt32` : 物品类型

### `api_get_level` <span id="api_get_level"></span>
##### **描述**
获取物品等级
##### **参数**
无

##### **返回值**
`UInt32` : 物品等级

### `api_set_level` <span id="api_set_level"></span>
##### **描述**
设置物品等级
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`level` | 等级  | [`UInt32`](../etype#UInt32) | 

##### **返回值**
无

### `api_drop_self` <span id="api_drop_self"></span>
##### **描述**
丢弃物品
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`pos` | 点  | [`FPoint`](../etype#FPoint) | 
`stack_cnt` | 数量  | [`Actor`](../etype#Actor) | None

##### **返回值**
无

### `api_remove` <span id="api_remove"></span>
##### **描述**
从单位身上移除物品
##### **参数**
无

##### **返回值**
无

### `api_set_sale_state` <span id="api_set_sale_state"></span>
##### **描述**
设置物品出售
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`sale_state` | 可否出售  | [`Bool`](../etype#Bool) | 

##### **返回值**
无

### `api_set_stack_cnt` <span id="api_set_stack_cnt"></span>
##### **描述**
设置物品堆叠数
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`stack_cnt` | 堆叠数  | [`Int32`](../etype#Int32) | 

##### **返回值**
无

### `api_set_charge_cnt` <span id="api_set_charge_cnt"></span>
##### **描述**
设置物品充能数
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`charge_cnt` | 充能数  | [`Int32`](../etype#Int32) | 

##### **返回值**
无

### `api_set_max_charge` <span id="api_set_max_charge"></span>
##### **描述**
设置物品最大充能数
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`max_charge` | 最大充能数  | [`Int32`](../etype#Int32) | 

##### **返回值**
无

### `api_get_position` <span id="api_get_position"></span>
##### **描述**
获取物品位置
##### **参数**
无

##### **返回值**
`Point` : 位置

### `api_is_in_scene` <span id="api_is_in_scene"></span>
##### **描述**
物品是否在场景中
##### **参数**
无

##### **返回值**
`Bool` : 是否在场景中

### `api_get_stack_cnt` <span id="api_get_stack_cnt"></span>
##### **描述**
获取物品堆叠数
##### **参数**
无

##### **返回值**
`UInt32` : 堆叠数

### `api_get_stack_type` <span id="api_get_stack_type"></span>
##### **描述**
获取物品堆叠类型
##### **参数**
无

##### **返回值**
`UInt32` : 堆叠类型

### `api_get_charge_cnt` <span id="api_get_charge_cnt"></span>
##### **描述**
获取物品充能数
##### **参数**
无

##### **返回值**
`UInt32` : 充能数

### `api_get_max_charge` <span id="api_get_max_charge"></span>
##### **描述**
获取物品充能数
##### **参数**
无

##### **返回值**
`UInt32` : 最大充能数

### `api_set_droppable` <span id="api_set_droppable"></span>
##### **描述**
设置物品丢弃
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`can_drop` | 可否丢弃  | [`Bool`](../etype#Bool) | 

##### **返回值**
无

### `api_set_sellable` <span id="api_set_sellable"></span>
##### **描述**
设置物品出售
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`can_sell` | 可否丢弃  | [`Bool`](../etype#Bool) | 

##### **返回值**
无

### `api_set_hp` <span id="api_set_hp"></span>
##### **描述**
设置物品生命值
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`hp` | 生命值  | [`Float`](../etype#Float) | 

##### **返回值**
无

### `api_get_droppable` <span id="api_get_droppable"></span>
##### **描述**
获取物品丢弃
##### **参数**
无

##### **返回值**
`Bool` : 可否丢弃

### `api_get_sellable` <span id="api_get_sellable"></span>
##### **描述**
获取物品出售
##### **参数**
无

##### **返回值**
`Bool` : 可否出售

### `api_get_hp` <span id="api_get_hp"></span>
##### **描述**
获取物品生命值
##### **参数**
无

##### **返回值**
`Fixed` : 生命值

### `api_set_attr` <span id="api_set_attr"></span>
##### **描述**
设置物品附加属性
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`attr_element_field` | 属性名  | [`Str`](../etype#Str) | 
`attr_key` | 属性成分名  | [`Str`](../etype#Str) | 
`val` | 属性值  | [`Float`](../etype#Float) | 

##### **返回值**
无

### `api_change_attr` <span id="api_change_attr"></span>
##### **描述**
增加物品附加属性
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`attr_element_field` | 属性名  | [`Str`](../etype#Str) | 
`attr_key` | 属性成分名  | [`Str`](../etype#Str) | 
`delta` | 属性值  | [`Float`](../etype#Float) | 

##### **返回值**
无

### `api_get_attr` <span id="api_get_attr"></span>
##### **描述**
获取物品附加属性
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`attr_element_field` | 属性成分名  | [`Str`](../etype#Str) | 
`attr_key` | 属性名  | [`Str`](../etype#Str) | 

##### **返回值**
`Float` : 属性值

### `api_set_creator` <span id="api_set_creator"></span>
##### **描述**
设置物品所有者
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`creator` | 所有者  | [`Role`](../etype#Role) | 

##### **返回值**
无

### `api_get_creator` <span id="api_get_creator"></span>
##### **描述**
获得物品所有者
##### **参数**
无

##### **返回值**
`Role` : 所有者

### `api_get_owner` <span id="api_get_owner"></span>
##### **描述**
获得物品拥有者
##### **参数**
无

##### **返回值**
`Unit` : 拥有者

### `api_add_stack` <span id="api_add_stack"></span>
##### **描述**
添加物品堆叠数
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`cnt` | 堆叠数  | [`Int32`](../etype#Int32) | 

##### **返回值**
无

### `api_add_charge` <span id="api_add_charge"></span>
##### **描述**
添加物品充能数
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`cnt` | 充能数  | [`Int32`](../etype#Int32) | 

##### **返回值**
无

### `api_get_scale` <span id="api_get_scale"></span>
##### **描述**
获取物品缩放
##### **参数**
无

##### **返回值**
`Fixed` : 缩放

### `api_get_face_angle` <span id="api_get_face_angle"></span>
##### **描述**
获取物品朝向
##### **参数**
无

##### **返回值**
`Fixed` : 朝向角度

### `api_set_scale` <span id="api_set_scale"></span>
##### **描述**
设置物品缩放
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`scale` | 缩放  | [`Float`](../etype#Float) | 

##### **返回值**
无

### `api_set_position` <span id="api_set_position"></span>
##### **描述**
设置物品位置
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`point` | 物品位置  | [`Point`](../etype#Point) | 

##### **返回值**
无

### `api_set_face_angle` <span id="api_set_face_angle"></span>
##### **描述**
设置物品朝向
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`face_angle` | 物品朝向  | [`Float`](../etype#Float) | 

##### **返回值**
无

### `api_is_in_area` <span id="api_is_in_area"></span>
##### **描述**
是否在区域内
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`area` | 区域  | [`Area`](../etype#Area) | 

##### **返回值**
`Bool` : 是否在区域

### `api_transmit` <span id="api_transmit"></span>
##### **描述**
移动物品到点
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`point` | 点  | [`Point`](../etype#Point) | 

##### **返回值**
无

### `api_add_tag` <span id="api_add_tag"></span>
##### **描述**
物品添加标签
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`tag` | 标签  | [`Str`](../etype#Str) | 

##### **返回值**
无

### `api_remove_tag` <span id="api_remove_tag"></span>
##### **描述**
物品删除标签
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`tag` | 标签  | [`Str`](../etype#Str) | 

##### **返回值**
无

### `api_has_tag` <span id="api_has_tag"></span>
##### **描述**
物品是否拥有标签
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`tag` | 标签  | [`Str`](../etype#Str) | 

##### **返回值**
`Bool` : 物品是否拥有标签

### `api_remove_kv` <span id="api_remove_kv"></span>
##### **描述**
物品移除键值对
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`k` | 要移除的键  | [`Str`](../etype#Str) | 

##### **返回值**
无

### `api_get_item_unit` <span id="api_get_item_unit"></span>
##### **描述**
获取物品在场景中的对应实体
##### **参数**
无

##### **返回值**
`Unit` : 场景中的实体

### `api_get_id` <span id="api_get_id"></span>
##### **描述**
获取物品id
##### **参数**
无

##### **返回值**
无

### `api_is_in_bar` <span id="api_is_in_bar"></span>
##### **描述**
物品是否在物品栏
##### **参数**
无

##### **返回值**
`Bool` : 是否在物品栏中

### `api_is_in_pkg` <span id="api_is_in_pkg"></span>
##### **描述**
物品是否在背包栏中
##### **参数**
无

##### **返回值**
`Bool` : 是否在背包栏中

### `api_play_sound_by_item_for_role_relation` <span id="api_play_sound_by_item_for_role_relation"></span>
##### **描述**
对物品所属单位的所属玩家关系播放音乐
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`camp_target` | 玩家关系  | [`RoleRelation`](../etype#RoleRelation) | 
`sid` | 乐曲编号  | [`AudioKey`](../etype#AudioKey) | 
`loop` | 是否循环  | [`Bool`](../etype#Bool) | 

##### **返回值**
无

### `api_get_positive_ability` <span id="api_get_positive_ability"></span>
##### **描述**
获取物品的主动技能
##### **参数**
无

##### **返回值**
`Ability` : 技能对象

### `api_get_passive_ability` <span id="api_get_passive_ability"></span>
##### **描述**
获取物品的被动技能
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`index` | 索引  | [`UInt64`](../etype#UInt64) | 0

##### **返回值**
`Ability` : 技能对象

### `api_set_item_icon` <span id="api_set_item_icon"></span>
##### **描述**
设置物品的图标为图片
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`icon_id` | 图标  | [`Texture`](../etype#Texture) | 

##### **返回值**
无

### `api_get_item_icon` <span id="api_get_item_icon"></span>
##### **描述**
获取物品的图标
##### **参数**
无

##### **返回值**
`Texture` : 图标

### `api_get_item_slot_type` <span id="api_get_item_slot_type"></span>
##### **描述**
物品所在背包槽位类型
##### **参数**
无

##### **返回值**
`SlotType` : 槽位类型

### `api_get_item_slot_idx` <span id="api_get_item_slot_idx"></span>
##### **描述**
物品所在的格子位置索引
##### **参数**
无

##### **返回值**
`Int32` : 格子位置

### `api_item_add_passive_ability` <span id="api_item_add_passive_ability"></span>
##### **描述**
物品实例添加被动技能
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`ability_id` | 技能id  | [`AbilityKey`](../etype#AbilityKey) | 
`ability_level` | 技能等级  | [`Int32`](../etype#Int32) | 

##### **返回值**
无
