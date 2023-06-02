# Destructible
## 描述
可破坏物

-----
## 方法列表
方法名  | 简述  |
:----- | :--- |
[`api_transmit`](#api_transmit) | 移动可破坏物到点 |
[`api_kill`](#api_kill) | 杀死可破坏物 |
[`api_set_dest_dry`](#api_set_dest_dry) | 使可破坏物枯竭 |
[`api_delete`](#api_delete) | 删除可破坏物 |
[`api_revivie`](#api_revivie) | 复活可破坏物 |
[`api_show_hide`](#api_show_hide) | 显示隐藏可破坏物 |
[`api_set_hp`](#api_set_hp) | 设置可破坏物生命值 |
[`api_set_max_hp`](#api_set_max_hp) | 设置可破坏物最大生命值 |
[`api_set_name`](#api_set_name) | 设置可破坏物的名称 |
[`api_set_source_num`](#api_set_source_num) | 设置可破坏物的资源数量 |
[`api_set_scale`](#api_set_scale) | 设置可破坏物的大小 |
[`api_set_face_angle`](#api_set_face_angle) | 设置可破坏物的角度 |
[`api_get_int_attr`](#api_get_int_attr) | 获取可破坏物的整型属性 |
[`api_get_key`](#api_get_key) | 获取可破坏物的编号 |
[`api_get_str_attr`](#api_get_str_attr) | 获取可破坏物的字符串属性 |
[`api_set_str_attr`](#api_set_str_attr) | 设置可破坏物的字符串属性 |
[`api_get_bool_attr`](#api_get_bool_attr) | 获取可破坏物的布尔值属性 |
[`api_get_float_attr`](#api_get_float_attr) | 获取可破坏物的浮点数属性 |
[`api_get_camp_id`](#api_get_camp_id) | 获取可破坏物所属阵营id |
[`api_get_position`](#api_get_position) | 获取可破坏物位置 |
[`api_get_id`](#api_get_id) | 获取可破坏物的id |
[`api_get_x_scale`](#api_get_x_scale) | 获取可破坏物的x轴缩放 |
[`api_get_y_scale`](#api_get_y_scale) | 获取可破坏物的y轴缩放 |
[`api_get_z_scale`](#api_get_z_scale) | 获取可破坏物的z轴缩放 |
[`api_get_angle`](#api_get_angle) | 获取可破坏物的旋转角度 |
[`api_get_dest_model`](#api_get_dest_model) | 获取可破坏物模型 |
[`api_is_ability_target`](#api_is_ability_target) | 可破坏物能否被技能指示器选中 |
[`api_is_attacked`](#api_is_attacked) | 可破坏物能否被普通攻击 |
[`api_is_selected`](#api_is_selected) | 可破坏物能否被选中 |
[`api_is_collected`](#api_is_collected) | 可破坏物能否被采集 |
[`api_is_visible`](#api_is_visible) | 可破坏物是否可见 |
[`api_is_alive`](#api_is_alive) | 可破坏物是否存活 |
[`api_get_dest_cur_source_nums`](#api_get_dest_cur_source_nums) | 获取可破坏物的当前资源 |
[`api_get_dest_max_source_nums`](#api_get_dest_max_source_nums) | 获取可破坏物的最大资源 |
[`api_get_role_res_of_dest`](#api_get_role_res_of_dest) | 获取可破坏物的玩家属性 |
[`api_get_item_type_of_dest`](#api_get_item_type_of_dest) | 获取可破坏物的物品类型 |
[`api_get_dest_face_angle`](#api_get_dest_face_angle) | 获取可破坏物的面向角度 |
[`api_get_dest_height_offset`](#api_get_dest_height_offset) | 获取可破坏物的高度 |
[`api_revivie_new`](#api_revivie_new) | 复活可破坏物 |
[`api_set_dest_is_ability_target`](#api_set_dest_is_ability_target) | 设置可破坏物能否被技能指示器选中 |
[`api_set_dest_is_attacked`](#api_set_dest_is_attacked) | 设置可破坏物能否被普通攻击 |
[`api_set_dest_is_selected`](#api_set_dest_is_selected) | 设置可破坏物能否被选中 |
[`api_set_dest_is_collected`](#api_set_dest_is_collected) | 设置可破坏物能否被采集 |
[`api_add_tag`](#api_add_tag) | 可破坏物添加标签 |
[`api_remove_tag`](#api_remove_tag) | 可破坏物移除标签 |
[`api_set_cur_source_nums`](#api_set_cur_source_nums) | 设置可破坏物能的当前资源个数 |
[`api_set_max_source_nums`](#api_set_max_source_nums) | 设置可破坏物能的最大资源个数 |
[`api_add_hp_cur_value`](#api_add_hp_cur_value) | 增加可破坏物能的当前生命值 |
[`api_add_hp_max_value`](#api_add_hp_max_value) | 增加可破坏物能的最大生命值 |
[`api_add_sp_cur_value`](#api_add_sp_cur_value) | 增加可破坏物能的当前资源个数 |
[`api_add_sp_max_value`](#api_add_sp_max_value) | 增加可破坏物能的最大资源个数 |
[`api_play_animation`](#api_play_animation) | 可破坏物播放动画 |
[`api_stop_animation`](#api_stop_animation) | 可破坏物停止播放动画 |
[`api_replace_model`](#api_replace_model) | 可破坏物替换模型 |
[`api_cancel_replace_model`](#api_cancel_replace_model) | 取消可破坏物替换模型 |
[`api_set_height_offset`](#api_set_height_offset) | 设置可破坏物的高度 |
[`api_add_height_offset`](#api_add_height_offset) | 增加可破坏物的高度 |


-----
## 方法

### `api_transmit` <span id="api_transmit"></span>
##### **描述**
移动可破坏物到点
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`point` | 点  | [`Point`](../etype#Point) | 

##### **返回值**
无

### `api_kill` <span id="api_kill"></span>
##### **描述**
杀死可破坏物
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`unit` | 凶手单位  | [`Unit`](../etype#Unit) | 

##### **返回值**
无

### `api_set_dest_dry` <span id="api_set_dest_dry"></span>
##### **描述**
使可破坏物枯竭
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`unit` | 采集单位  | [`Unit`](../etype#Unit) | 

##### **返回值**
无

### `api_delete` <span id="api_delete"></span>
##### **描述**
删除可破坏物
##### **参数**
无

##### **返回值**
无

### `api_revivie` <span id="api_revivie"></span>
##### **描述**
复活可破坏物
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`point` | 复活点  | [`Point`](../etype#Point) | 

##### **返回值**
无

### `api_show_hide` <span id="api_show_hide"></span>
##### **描述**
显示隐藏可破坏物
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`is_show` | 是否显示  | [`Bool`](../etype#Bool) | 

##### **返回值**
无

### `api_set_hp` <span id="api_set_hp"></span>
##### **描述**
设置可破坏物生命值
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`hp_value` | 生命值  | [`UInt64`](../etype#UInt64) | 

##### **返回值**
无

### `api_set_max_hp` <span id="api_set_max_hp"></span>
##### **描述**
设置可破坏物最大生命值
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`hp_value` | 最大生命值  | [`UInt64`](../etype#UInt64) | 

##### **返回值**
无

### `api_set_name` <span id="api_set_name"></span>
##### **描述**
设置可破坏物的名称
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`name` | 名称  | [`Str`](../etype#Str) | 

##### **返回值**
无

### `api_set_source_num` <span id="api_set_source_num"></span>
##### **描述**
设置可破坏物的资源数量
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`num` | 资源数量  | [`UInt64`](../etype#UInt64) | 

##### **返回值**
无

### `api_set_scale` <span id="api_set_scale"></span>
##### **描述**
设置可破坏物的大小
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`x` | x大小  | [`UInt64`](../etype#UInt64) | 
`y` | y大小  | [`UInt64`](../etype#UInt64) | 
`z` | z大小  | [`UInt64`](../etype#UInt64) | 

##### **返回值**
无

### `api_set_face_angle` <span id="api_set_face_angle"></span>
##### **描述**
设置可破坏物的角度
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`angle` | 角度  | [`Fixed`](../etype#Fixed) | 

##### **返回值**
无

### `api_get_int_attr` <span id="api_get_int_attr"></span>
##### **描述**
获取可破坏物的整型属性
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`attr_name` | 属性名称  | [`Str`](../etype#Str) | 

##### **返回值**
`UInt32` : 整数类型返回值

### `api_get_key` <span id="api_get_key"></span>
##### **描述**
获取可破坏物的编号
##### **参数**
无

##### **返回值**
`DestructibleKey` : 可破坏物编号

### `api_get_str_attr` <span id="api_get_str_attr"></span>
##### **描述**
获取可破坏物的字符串属性
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`attr_name` | 属性名称  | [`Str`](../etype#Str) | 

##### **返回值**
`Str` : 字符串类型返回值

### `api_set_str_attr` <span id="api_set_str_attr"></span>
##### **描述**
设置可破坏物的字符串属性
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`attr_name` | 属性名称  | [`Str`](../etype#Str) | 
`value` | 属性取值  | [`Str`](../etype#Str) | 

##### **返回值**
无

### `api_get_bool_attr` <span id="api_get_bool_attr"></span>
##### **描述**
获取可破坏物的布尔值属性
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`attr_name` | 属性名称  | [`Str`](../etype#Str) | 

##### **返回值**
`Bool` : 布尔类型返回值

### `api_get_float_attr` <span id="api_get_float_attr"></span>
##### **描述**
获取可破坏物的浮点数属性
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`attr_name` | 属性名称  | [`Str`](../etype#Str) | 

##### **返回值**
`Fixed` : 浮点类型返回值

### `api_get_camp_id` <span id="api_get_camp_id"></span>
##### **描述**
获取可破坏物所属阵营id
##### **参数**
无

##### **返回值**
`CampID` : 阵营ID

### `api_get_position` <span id="api_get_position"></span>
##### **描述**
获取可破坏物位置
##### **参数**
无

##### **返回值**
`FVector3` : 单位位置

### `api_get_id` <span id="api_get_id"></span>
##### **描述**
获取可破坏物的id
##### **参数**
无

##### **返回值**
无

### `api_get_x_scale` <span id="api_get_x_scale"></span>
##### **描述**
获取可破坏物的x轴缩放
##### **参数**
无

##### **返回值**
`Float` : 缩放的值

### `api_get_y_scale` <span id="api_get_y_scale"></span>
##### **描述**
获取可破坏物的y轴缩放
##### **参数**
无

##### **返回值**
`Float` : 缩放的值

### `api_get_z_scale` <span id="api_get_z_scale"></span>
##### **描述**
获取可破坏物的z轴缩放
##### **参数**
无

##### **返回值**
`Float` : 缩放的值

### `api_get_angle` <span id="api_get_angle"></span>
##### **描述**
获取可破坏物的旋转角度
##### **参数**
无

##### **返回值**
`Float` : 角度值

### `api_get_dest_model` <span id="api_get_dest_model"></span>
##### **描述**
获取可破坏物模型
##### **参数**
无

##### **返回值**
`ModelKey` : 模型编号

### `api_is_ability_target` <span id="api_is_ability_target"></span>
##### **描述**
可破坏物能否被技能指示器选中
##### **参数**
无

##### **返回值**
`Bool` : 布尔值

### `api_is_attacked` <span id="api_is_attacked"></span>
##### **描述**
可破坏物能否被普通攻击
##### **参数**
无

##### **返回值**
`Bool` : 布尔值

### `api_is_selected` <span id="api_is_selected"></span>
##### **描述**
可破坏物能否被选中
##### **参数**
无

##### **返回值**
`Bool` : 布尔值

### `api_is_collected` <span id="api_is_collected"></span>
##### **描述**
可破坏物能否被采集
##### **参数**
无

##### **返回值**
`Bool` : 布尔值

### `api_is_visible` <span id="api_is_visible"></span>
##### **描述**
可破坏物是否可见
##### **参数**
无

##### **返回值**
`Bool` : 布尔值

### `api_is_alive` <span id="api_is_alive"></span>
##### **描述**
可破坏物是否存活
##### **参数**
无

##### **返回值**
`Bool` : 布尔值

### `api_get_dest_cur_source_nums` <span id="api_get_dest_cur_source_nums"></span>
##### **描述**
获取可破坏物的当前资源
##### **参数**
无

##### **返回值**
`UInt64` : 布尔值

### `api_get_dest_max_source_nums` <span id="api_get_dest_max_source_nums"></span>
##### **描述**
获取可破坏物的最大资源
##### **参数**
无

##### **返回值**
`UInt64` : 布尔值

### `api_get_role_res_of_dest` <span id="api_get_role_res_of_dest"></span>
##### **描述**
获取可破坏物的玩家属性
##### **参数**
无

##### **返回值**
`RoleResKey` : 玩家属性

### `api_get_item_type_of_dest` <span id="api_get_item_type_of_dest"></span>
##### **描述**
获取可破坏物的物品类型
##### **参数**
无

##### **返回值**
`ItemKey` : 物品类型

### `api_get_dest_face_angle` <span id="api_get_dest_face_angle"></span>
##### **描述**
获取可破坏物的面向角度
##### **参数**
无

##### **返回值**
`Fixed` : 可破坏物的面向角度

### `api_get_dest_height_offset` <span id="api_get_dest_height_offset"></span>
##### **描述**
获取可破坏物的高度
##### **参数**
无

##### **返回值**
`Fixed` : 可破坏物的高度

### `api_revivie_new` <span id="api_revivie_new"></span>
##### **描述**
复活可破坏物
##### **参数**
无

##### **返回值**
无

### `api_set_dest_is_ability_target` <span id="api_set_dest_is_ability_target"></span>
##### **描述**
设置可破坏物能否被技能指示器选中
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`bool_value` | 布尔值  | [`Bool`](../etype#Bool) | 

##### **返回值**
无

### `api_set_dest_is_attacked` <span id="api_set_dest_is_attacked"></span>
##### **描述**
设置可破坏物能否被普通攻击
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`bool_value` | 布尔值  | [`Bool`](../etype#Bool) | 

##### **返回值**
无

### `api_set_dest_is_selected` <span id="api_set_dest_is_selected"></span>
##### **描述**
设置可破坏物能否被选中
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`bool_value` | 布尔值  | [`Bool`](../etype#Bool) | 

##### **返回值**
无

### `api_set_dest_is_collected` <span id="api_set_dest_is_collected"></span>
##### **描述**
设置可破坏物能否被采集
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`bool_value` | 布尔值  | [`Bool`](../etype#Bool) | 

##### **返回值**
无

### `api_add_tag` <span id="api_add_tag"></span>
##### **描述**
可破坏物添加标签
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`tag` | TAG  | [`Str`](../etype#Str) | 

##### **返回值**
无

### `api_remove_tag` <span id="api_remove_tag"></span>
##### **描述**
可破坏物移除标签
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`tag` | TAG  | [`Str`](../etype#Str) | 

##### **返回值**
无

### `api_set_cur_source_nums` <span id="api_set_cur_source_nums"></span>
##### **描述**
设置可破坏物能的当前资源个数
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`sp_value` | 资源数  | [`Fixed`](../etype#Fixed) | 

##### **返回值**
无

### `api_set_max_source_nums` <span id="api_set_max_source_nums"></span>
##### **描述**
设置可破坏物能的最大资源个数
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`sp_value` | 资源数  | [`Fixed`](../etype#Fixed) | 

##### **返回值**
无

### `api_add_hp_cur_value` <span id="api_add_hp_cur_value"></span>
##### **描述**
增加可破坏物能的当前生命值
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`delta` | 当前生命值  | [`Fixed`](../etype#Fixed) | 

##### **返回值**
无

### `api_add_hp_max_value` <span id="api_add_hp_max_value"></span>
##### **描述**
增加可破坏物能的最大生命值
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`delta` | 最大生命值  | [`Fixed`](../etype#Fixed) | 

##### **返回值**
无

### `api_add_sp_cur_value` <span id="api_add_sp_cur_value"></span>
##### **描述**
增加可破坏物能的当前资源个数
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`delta` | 当前资源数  | [`Fixed`](../etype#Fixed) | 

##### **返回值**
无

### `api_add_sp_max_value` <span id="api_add_sp_max_value"></span>
##### **描述**
增加可破坏物能的最大资源个数
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`delta` | 最大资源数  | [`Fixed`](../etype#Fixed) | 

##### **返回值**
无

### `api_play_animation` <span id="api_play_animation"></span>
##### **描述**
可破坏物播放动画
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`name` | 动画名称  | [`Str`](../etype#Str) | 
`init_time` | 开始时间(s)  | [`Float`](../etype#Float) | 0
`end_time` | 结束时间(s)，正数 -1 表示不结束  | [`Float`](../etype#Float) | -1
`loop` | 是否循环  | [`Bool`](../etype#Bool) | False
`rate` | 播放倍率  | [`Float`](../etype#Float) | 1

##### **返回值**
无

### `api_stop_animation` <span id="api_stop_animation"></span>
##### **描述**
可破坏物停止播放动画
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`name` | 动画名称  | [`Str`](../etype#Str) | 

##### **返回值**
无

### `api_replace_model` <span id="api_replace_model"></span>
##### **描述**
可破坏物替换模型
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`target_model` | 目标模型编号  | [`ModelKey`](../etype#ModelKey) | 

##### **返回值**
无

### `api_cancel_replace_model` <span id="api_cancel_replace_model"></span>
##### **描述**
取消可破坏物替换模型
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`target_model` | 目标模型名字  | [`ModelKey`](../etype#ModelKey) | 

##### **返回值**
无

### `api_set_height_offset` <span id="api_set_height_offset"></span>
##### **描述**
设置可破坏物的高度
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`height_value` | 高度值  | [`Fixed`](../etype#Fixed) | 

##### **返回值**
无

### `api_add_height_offset` <span id="api_add_height_offset"></span>
##### **描述**
增加可破坏物的高度
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`delta` | 高度变化值  | [`Fixed`](../etype#Fixed) | 

##### **返回值**
无
