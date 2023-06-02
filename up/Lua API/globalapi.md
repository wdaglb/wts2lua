# GlobalAPI
## 描述
globalapi

-----
## 方法列表
方法名  | 简述  |
:----- | :--- |
[`init_lua_var`](#init_lua_var) | LUA层初始化参数 |
[`api_clear_tag`](#api_clear_tag) | 清空标签 |
[`api_clear_kv`](#api_clear_kv) | 清空自定义键值 |
[`has_tag`](#has_tag) | 判断Actor是否有Tag |
[`api_has_kv_any`](#api_has_kv_any) | 判断Actor是否有kv |
[`set_actor_trigger_enabled`](#set_actor_trigger_enabled) | 使能Actor身上的触发器 |
[`trigger_actor_trigger`](#trigger_actor_trigger) | 触发Actor身上的触发器 |
[`reg_actor_trigger`](#reg_actor_trigger) | 注册Actor上的触发器并生效 |
[`unreg_actor_trigger`](#unreg_actor_trigger) | 注销Actor上的触发器 |
[`create_sector_shape`](#create_sector_shape) | 创建一个扇形 |
[`create_circular_shape`](#create_circular_shape) | 创建一个圆形 |
[`create_rectangle_shape`](#create_rectangle_shape) | 创建一个矩形 |
[`create_annular_shape`](#create_annular_shape) | 创建一个环形 |
[`coord_to_point`](#coord_to_point) | 坐标值转化为FVector3 |
[`int_iterator`](#int_iterator) | 整数迭代器，最大迭代次数不超过2^20 |
[`int_iterator2`](#int_iterator2) | 整数迭代器 |
[`list_index_iterator`](#list_index_iterator) | 列表索引迭代器 |
[`table_iterator`](#table_iterator) | table迭代器 |
[`get_iter_table_key_str`](#get_iter_table_key_str) | get_iter_table_key_str |
[`get_iter_table_key_int`](#get_iter_table_key_int) | get_iter_table_key_int |
[`int32_arithmetic_operation`](#int32_arithmetic_operation) | Int32运算 |
[`int32_plus_one`](#int32_plus_one) | Int32自增1 |
[`int32_min`](#int32_min) | Int32取较小值 |
[`int32_max`](#int32_max) | Int32取较大值 |
[`get_point_offset_vector`](#get_point_offset_vector) | 点向方向偏移 |
[`int64_to_str`](#int64_to_str) | int64转换字符串 |
[`to_str_default`](#to_str_default) | to_str_default |
[`api_remove_kv`](#api_remove_kv) | 删除键值对 |
[`get_unit_key_pool_num`](#get_unit_key_pool_num) | 获取单位编号池内单位编号数量 |
[`plane_range_between_2_point`](#plane_range_between_2_point) | 两点之间距离 |
[`int32_to_fixed`](#int32_to_fixed) | 整数转定点数 |
[`fix32_equal_with_precision`](#fix32_equal_with_precision) | 实数近似比较(4位小数) |
[`fixed_to_int32`](#fixed_to_int32) | 定点数转整数 |
[`ability_index_to_int32`](#ability_index_to_int32) | 技能槽位转整数 |
[`fixed_to_str`](#fixed_to_str) | 定点数转字符串 |
[`fvector3_to_str`](#fvector3_to_str) | 定点FVector3转字符串 |
[`fvector2_to_str`](#fvector2_to_str) | 定点FVector2转字符串 |
[`float_to_str`](#float_to_str) | 浮点数转字符串 |
[`vector3_to_str`](#vector3_to_str) | 浮点Vector3转字符串 |
[`str_to_vector3`](#str_to_vector3) | 字符串转Vector3 |
[`vector2_to_str`](#vector2_to_str) | 浮点Vector2转字符串 |
[`shape_to_str`](#shape_to_str) | Shape转字符串 |
[`dynamic_to_str`](#dynamic_to_str) | 动态类型数转字符串 |
[`int32_to_str`](#int32_to_str) | int32_to_str |
[`bool_to_str`](#bool_to_str) | 布尔型转字符串 |
[`i2s`](#i2s) | 整数转字符串 |
[`join_s`](#join_s) | 字符串拼接 |
[`fixed_arithmetic_operation`](#fixed_arithmetic_operation) | 定点数运算 |
[`fixed_plus_one`](#fixed_plus_one) | 定点数自增1 |
[`fixed_min`](#fixed_min) | 取两个定点数最小值 |
[`fixed_max`](#fixed_max) | 取两个定点数最小大值 |
[`angle_arithmetic_operation`](#angle_arithmetic_operation) | 角度计算 |
[`degree_to_radian`](#degree_to_radian) | 转换度到弧度 |
[`radian_sin`](#radian_sin) | 正弦 |
[`radian_cos`](#radian_cos) | 余弦 |
[`radian_tan`](#radian_tan) | 正切 |
[`radian_asin`](#radian_asin) | 反正弦 |
[`radian_acos`](#radian_acos) | 反余弦 |
[`radian_atan`](#radian_atan) | 反正切 |
[`radian_atan_x_y`](#radian_atan_x_y) | 反正切(Y:X) |
[`sqrt`](#sqrt) | 平方根 |
[`pow`](#pow) | 求幂 |
[`abs`](#abs) | 求绝对值 |
[`interval`](#interval) | 区间 |
[`nearest_quadratic_number`](#nearest_quadratic_number) | 找最近的二次方数 |
[`ceil`](#ceil) | 最小整数 |
[`floor`](#floor) | 最大整数 |
[`interpolate`](#interpolate) | 插值 |
[`invert_interpolate`](#invert_interpolate) | 反插值 |
[`log10`](#log10) | 对数10 |
[`log`](#log) | 对数 |
[`get_max_in_list`](#get_max_in_list) | 返回组内最大值 |
[`get_min_in_list`](#get_min_in_list) | 返回组内最小值 |
[`round`](#round) | 四舍五入 |
[`sign`](#sign) | 返回正负符号 |
[`round_dec`](#round_dec) | 保留X位小数 |
[`fixed_trigonometric_operation`](#fixed_trigonometric_operation) | 定点数三角函数运算 |
[`get_player_group_num`](#get_player_group_num) | 玩家组的玩家数量 |
[`get_related_ability`](#get_related_ability) | 获取Actor关联技能 |
[`add_actor_timer`](#add_actor_timer) | 为Actor添加定时器 |
[`stop_actor_timer`](#stop_actor_timer) | 关闭Actor计时器 |
[`get_fixed_coord_index`](#get_fixed_coord_index) | 获取FVector3的其中一个值 |
[`clear_group`](#clear_group) | 清空列表 |
[`set_list_with_length`](#set_list_with_length) | 将第二个列表的值赋值给第一个列表 不改变第一个列表的长度 |
[`judge_role_in_group`](#judge_role_in_group) | 判断玩家是否在玩家组 |
[`is_unit_alive`](#is_unit_alive) | 判断单位是否活着 |
[`get_empty_unit_key_pool`](#get_empty_unit_key_pool) | 获取空的单位编号池 |
[`get_point_in_route`](#get_point_in_route) | 获取路径中某点 |
[`get_point_rotate_y`](#get_point_rotate_y) | 点绕Y轴旋转(角度制) |
[`str_to_int`](#str_to_int) | 字符串转整数 |
[`str_to_bool`](#str_to_bool) | 字符串转布尔值 |
[`str_to_fixed`](#str_to_fixed) | 字符串转定点数 |
[`delete_sub_str`](#delete_sub_str) | 删除子字符串 |
[`extract_str`](#extract_str) | 截取子字符串 |
[`length_of_str`](#length_of_str) | 获取字符串长度 |
[`str_to_upper_lower`](#str_to_upper_lower) | 字符串大小写统一 |
[`pos_in_str`](#pos_in_str) | 子字符串位置 |
[`api_int_to_key`](#api_int_to_key) | 整数转化为特效类型 |
[`api_key_to_int`](#api_key_to_int) | 将投射物类型转化为整数 |
[`unit_command_type_to_str`](#unit_command_type_to_str) | 单位命令类型转字符串 |
[`str_to_unit_command_type`](#str_to_unit_command_type) | 字符串转单位命令类型 |
[`ability_cast_type_to_str`](#ability_cast_type_to_str) | 技能释放类型转字符串 |
[`str_to_ability_cast_type`](#str_to_ability_cast_type) | 字符串转技能释放类型 |
[`poly_area_to_str`](#poly_area_to_str) | 多边形区域转字符串 |
[`projectile_group_to_str`](#projectile_group_to_str) | 投射物组转字符串 |
[`role_relation_to_str`](#role_relation_to_str) | 玩家关系转字符串 |
[`str_to_role_relation`](#str_to_role_relation) | 字符串转玩家关系 |
[`unit_key_pool_to_str`](#unit_key_pool_to_str) | 单位编号池转字符串 |
[`unit_type_to_str`](#unit_type_to_str) | 单位分类转字符串 |
[`str_to_unit_type`](#str_to_unit_type) | 字符串转单位分类 |
[`timer_to_str`](#timer_to_str) | 计时器转字符串 |
[`unit_to_str`](#unit_to_str) | 单位转字符串 |
[`unit_group_to_str`](#unit_group_to_str) | 单位组转字符串 |
[`item_to_str`](#item_to_str) | 物品转字符串 |
[`item_group_to_str`](#item_group_to_str) | 物品组转字符串 |
[`role_to_str`](#role_to_str) | 玩家转字符串 |
[`role_group_to_str`](#role_group_to_str) | 玩家组转字符串 |
[`role_status_to_str`](#role_status_to_str) | 玩家状态转字符串 |
[`str_to_role_status`](#str_to_role_status) | 字符串转玩家状态 |
[`role_type_to_str`](#role_type_to_str) | 玩家控制者转字符串 |
[`str_to_role_type`](#str_to_role_type) | 字符串转玩家控制者 |
[`ability_to_str`](#ability_to_str) | 技能转字符串 |
[`ability_type_to_str`](#ability_type_to_str) | 技能槽位类型转字符串 |
[`str_to_ability_type`](#str_to_ability_type) | 字符串转技能槽位类型 |
[`rect_area_to_str`](#rect_area_to_str) | 矩形区域转字符串 |
[`circle_area_to_str`](#circle_area_to_str) | 圆形区域转字符串 |
[`road_to_str`](#road_to_str) | 路径转字符串 |
[`dest_to_str`](#dest_to_str) | 可破坏物转字符串 |
[`project_to_str`](#project_to_str) | 投射物转字符串 |
[`modifier_entity_to_str`](#modifier_entity_to_str) | 魔法效果转字符串 |
[`modifier_type_to_str`](#modifier_type_to_str) | 魔法效果类别转字符串 |
[`str_to_modifier_type`](#str_to_modifier_type) | 字符串转魔法效果类别 |
[`modifier_effect_type_to_str`](#modifier_effect_type_to_str) | 魔法效果影响类型转字符串 |
[`str_to_modifier_effect_type`](#str_to_modifier_effect_type) | 字符串转魔法效果影响类型 |
[`camp_to_str`](#camp_to_str) | 阵营转字符串 |
[`random_pool_to_str`](#random_pool_to_str) | 随机池转字符串 |
[`keyboard_key_to_str`](#keyboard_key_to_str) | 键盘按键转字符串 |
[`str_to_keyboard_key`](#str_to_keyboard_key) | 字符串转键盘按键 |
[`mouse_key_to_str`](#mouse_key_to_str) | 鼠标按键转字符串 |
[`str_to_mouse_key`](#str_to_mouse_key) | 字符串转鼠标按键 |
[`mouse_wheel_to_str`](#mouse_wheel_to_str) | 鼠标滚轮转字符串 |
[`str_to_mouse_wheel`](#str_to_mouse_wheel) | 字符串转鼠标滚轮 |
[`trigger_to_str`](#trigger_to_str) | 触发器转字符串 |
[`table_to_str`](#table_to_str) | 表转字符串 |
[`damage_type_to_str`](#damage_type_to_str) | 伤害类型转字符串 |
[`str_to_damage_type`](#str_to_damage_type) | 字符串转伤害类型 |
[`unit_attr_type_to_str`](#unit_attr_type_to_str) | 单位属性类型转字符串 |
[`str_to_unit_attr_type`](#str_to_unit_attr_type) | 字符串转单位属性类型 |
[`str_to_ui_event`](#str_to_ui_event) | 字符串转UI事件 |
[`comp_to_str`](#comp_to_str) | 控件转字符串 |
[`get_client_language_type`](#get_client_language_type) | 获取本地语言环境 |


-----
## 方法

### `init_lua_var` <span id="init_lua_var"></span>
##### **描述**
LUA层初始化参数
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`name` | name  | [`Str`](../etype#Str) | 
`value` | value  | [`Str`](../etype#Str) | 
`if_list` | 是否数组  | [`Bool`](../etype#Bool) | 

##### **返回值**
`Actor` : 变量

### `api_clear_tag` <span id="api_clear_tag"></span>
##### **描述**
清空标签
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`actor` | Actor  | [`Actor`](../etype#Actor) | 

##### **返回值**
无

### `api_clear_kv` <span id="api_clear_kv"></span>
##### **描述**
清空自定义键值
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`actor` | Actor  | [`Actor`](../etype#Actor) | 

##### **返回值**
无

### `has_tag` <span id="has_tag"></span>
##### **描述**
判断Actor是否有Tag
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`actor` | Actor  | [`Actor`](../etype#Actor) | 
`tag` | Tag标签  | [`Str`](../etype#Str) | 

##### **返回值**
`Bool` : 是否有tag

### `api_has_kv_any` <span id="api_has_kv_any"></span>
##### **描述**
判断Actor是否有kv
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`kvbase` | Actor  | [`Actor`](../etype#Actor) | 
`key` | kv  | [`Str`](../etype#Str) | 

##### **返回值**
`Bool` : 是否有tag

### `set_actor_trigger_enabled` <span id="set_actor_trigger_enabled"></span>
##### **描述**
使能Actor身上的触发器
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`actor` | Actor  | [`Actor`](../etype#Actor) | 
`trigger_id` | 触发器id  | [`TriggerID`](../etype#TriggerID) | 
`enabled` | 使能  | [`Bool`](../etype#Bool) | 

##### **返回值**
无

### `trigger_actor_trigger` <span id="trigger_actor_trigger"></span>
##### **描述**
触发Actor身上的触发器
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`actor` | actor  | [`Actor`](../etype#Actor) | 
`trigger_id` | 触发器id  | [`TriggerID`](../etype#TriggerID) | 

##### **返回值**
无

### `reg_actor_trigger` <span id="reg_actor_trigger"></span>
##### **描述**
注册Actor上的触发器并生效
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`actor` | actor  | [`Actor`](../etype#Actor) | 
`conf_id` | 触发器配置id  | [`TriggerID`](../etype#TriggerID) | 
`context` | 上下文  | [`Dict`](../etype#Dict) | 

##### **返回值**
`DynamicTriggerInstance` : 动态触发器实例

### `unreg_actor_trigger` <span id="unreg_actor_trigger"></span>
##### **描述**
注销Actor上的触发器
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`actor` | actor  | [`Actor`](../etype#Actor) | 
`trigger_id` | 动态触发器实例  | [`DynamicTriggerInstance`](../etype#DynamicTriggerInstance) | 

##### **返回值**
无

### `create_sector_shape` <span id="create_sector_shape"></span>
##### **描述**
创建一个扇形
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`radius` | 半径  | [`Fixed`](../etype#Fixed) | 
`angle` | 角度  | [`Fixed`](../etype#Fixed) | 
`yaw` | 朝向  | [`Float`](../etype#Float) | 

##### **返回值**
`Shape` : 扇形对象

### `create_circular_shape` <span id="create_circular_shape"></span>
##### **描述**
创建一个圆形
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`radius` | 半径  | [`Fixed`](../etype#Fixed) | 

##### **返回值**
`Shape` : 圆形对象

### `create_rectangle_shape` <span id="create_rectangle_shape"></span>
##### **描述**
创建一个矩形
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`width` | 长  | [`Fixed`](../etype#Fixed) | 
`length` | 宽  | [`Fixed`](../etype#Fixed) | 
`yaw` | 朝向  | [`Float`](../etype#Float) | 

##### **返回值**
`Shape` : 矩形对象

### `create_annular_shape` <span id="create_annular_shape"></span>
##### **描述**
创建一个环形
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`small_r` | 小圆半径  | [`Fixed`](../etype#Fixed) | 
`big_r` | 大圆半径  | [`Fixed`](../etype#Fixed) | 

##### **返回值**
`Shape` : 环形对象

### `coord_to_point` <span id="coord_to_point"></span>
##### **描述**
坐标值转化为FVector3
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`x` | x  | [`Fixed`](../etype#Fixed) | 
`z` | y  | [`Fixed`](../etype#Fixed) | 
`y` | z  | [`Fixed`](../etype#Fixed) | Fix32(0.0)

##### **返回值**
`FVector3` : FVector3

### `int_iterator` <span id="int_iterator"></span>
##### **描述**
整数迭代器，最大迭代次数不超过2^20
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`num` | 迭代次数  | [`Int32`](../etype#Int32) | 

##### **返回值**
`Int32Iterator` : Python迭代器

### `int_iterator2` <span id="int_iterator2"></span>
##### **描述**
整数迭代器
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`start` | 计数从start开始  | [`Int32`](../etype#Int32) | 
`stop` | 计数到stop结束  | [`Int32`](../etype#Int32) | 
`step` | 步长  | [`Int32`](../etype#Int32) | 

##### **返回值**
`Int32Iterator` : Python迭代器

### `list_index_iterator` <span id="list_index_iterator"></span>
##### **描述**
列表索引迭代器
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`l` | 列表  | [`List`](../etype#List) | 

##### **返回值**
`Iterator` : Python迭代器

### `table_iterator` <span id="table_iterator"></span>
##### **描述**
table迭代器
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`l` | TAB  | [`Table`](../etype#Table) | 

##### **返回值**
`Iterator` : Python迭代器

### `get_iter_table_key_str` <span id="get_iter_table_key_str"></span>
##### **描述**
get_iter_table_key_str
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`item` | table iter item  | [`List`](../etype#List) | 

##### **返回值**
`Str` : key str

### `get_iter_table_key_int` <span id="get_iter_table_key_int"></span>
##### **描述**
get_iter_table_key_int
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`item` | table iter item  | [`List`](../etype#List) | 

##### **返回值**
`Int32` : key int

### `int32_arithmetic_operation` <span id="int32_arithmetic_operation"></span>
##### **描述**
Int32运算
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`v1` | x  | [`Int32`](../etype#Int32) | 
`op` | operator(+,-,*,/,%)  | [`Str`](../etype#Str) | 
`v2` | y  | [`Int32`](../etype#Int32) | 

##### **返回值**
`Int32` : 返回值

### `int32_plus_one` <span id="int32_plus_one"></span>
##### **描述**
Int32自增1
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`int_value` | x  | [`Int32`](../etype#Int32) | 

##### **返回值**
`Int32` : 返回值

### `int32_min` <span id="int32_min"></span>
##### **描述**
Int32取较小值
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`int_value1` | x1  | [`Int32`](../etype#Int32) | 
`int_value2` | x2  | [`Int32`](../etype#Int32) | 

##### **返回值**
`Int32` : 返回值

### `int32_max` <span id="int32_max"></span>
##### **描述**
Int32取较大值
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`int_value1` | x1  | [`Int32`](../etype#Int32) | 
`int_value2` | x2  | [`Int32`](../etype#Int32) | 

##### **返回值**
`Int32` : 返回值

### `get_point_offset_vector` <span id="get_point_offset_vector"></span>
##### **描述**
点向方向偏移
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`point` | 起始点  | [`FVector3`](../etype#FVector3) | 
`angle` | 方向角度  | [`Fixed`](../etype#Fixed) | 
`dis` | 偏移距离  | [`Fixed`](../etype#Fixed) | 

##### **返回值**
`FVector3` : 返回值

### `int64_to_str` <span id="int64_to_str"></span>
##### **描述**
int64转换字符串
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`val` | 值  | [`Int64`](../etype#Int64) | 

##### **返回值**
`Str` : 字符串

### `to_str_default` <span id="to_str_default"></span>
##### **描述**
to_str_default
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`val` | 值  | [`Actor`](../etype#Actor) | 

##### **返回值**
`Str` : 字符串

### `api_remove_kv` <span id="api_remove_kv"></span>
##### **描述**
删除键值对
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`kvbase` | 键值对容器  | [`KVBase`](../etype#KVBase) | 
`key` | 键名  | [`Str`](../etype#Str) | 

##### **返回值**
无

### `get_unit_key_pool_num` <span id="get_unit_key_pool_num"></span>
##### **描述**
获取单位编号池内单位编号数量
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`pool` | 单位编号池  | [`UnitKeyPool`](../etype#UnitKeyPool) | 

##### **返回值**
`Int32` : 单位编号数量

### `plane_range_between_2_point` <span id="plane_range_between_2_point"></span>
##### **描述**
两点之间距离
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`p1` | 目标点  | [`FPoint`](../etype#FPoint) | 
`p2` | 起始点  | [`FPoint`](../etype#FPoint) | 

##### **返回值**
`Fixed` : 距离

### `int32_to_fixed` <span id="int32_to_fixed"></span>
##### **描述**
整数转定点数
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`i` | 整数  | [`Int32`](../etype#Int32) | 

##### **返回值**
`Fixed` : 定点数

### `fix32_equal_with_precision` <span id="fix32_equal_with_precision"></span>
##### **描述**
实数近似比较(4位小数)
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`a` | 定点数1  | [`Fixed`](../etype#Fixed) | 
`op` | 比较符  | [`Str`](../etype#Str) | 
`b` | 定点数2  | [`Fixed`](../etype#Fixed) | 

##### **返回值**
`Bool` : 结果

### `fixed_to_int32` <span id="fixed_to_int32"></span>
##### **描述**
定点数转整数
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`f` | 定点数  | [`Fixed`](../etype#Fixed) | 

##### **返回值**
`Int32` : 整数

### `ability_index_to_int32` <span id="ability_index_to_int32"></span>
##### **描述**
技能槽位转整数
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`ability_index` | 技能槽位  | [`AbilityIndex`](../etype#AbilityIndex) | 

##### **返回值**
`Int32` : 整数

### `fixed_to_str` <span id="fixed_to_str"></span>
##### **描述**
定点数转字符串
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`f` | 定点数  | [`Fixed`](../etype#Fixed) | 

##### **返回值**
`Str` : 字符串

### `fvector3_to_str` <span id="fvector3_to_str"></span>
##### **描述**
定点FVector3转字符串
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`f` | FVector3  | [`FVector3`](../etype#FVector3) | 

##### **返回值**
`Str` : 字符串

### `fvector2_to_str` <span id="fvector2_to_str"></span>
##### **描述**
定点FVector2转字符串
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`f` | FVector2  | [`FVector2`](../etype#FVector2) | 

##### **返回值**
`Str` : 字符串

### `float_to_str` <span id="float_to_str"></span>
##### **描述**
浮点数转字符串
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`f` | 浮点数  | [`Float`](../etype#Float) | 

##### **返回值**
`Str` : 字符串

### `vector3_to_str` <span id="vector3_to_str"></span>
##### **描述**
浮点Vector3转字符串
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`f` | Vector3  | [`Vector3`](../etype#Vector3) | 

##### **返回值**
`Str` : 字符串

### `str_to_vector3` <span id="str_to_vector3"></span>
##### **描述**
字符串转Vector3
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`f` | 字符串  | [`Str`](../etype#Str) | 

##### **返回值**
`Vector3` : Vector3

### `vector2_to_str` <span id="vector2_to_str"></span>
##### **描述**
浮点Vector2转字符串
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`f` | Vector2  | [`Vector2`](../etype#Vector2) | 

##### **返回值**
`Str` : 字符串

### `shape_to_str` <span id="shape_to_str"></span>
##### **描述**
Shape转字符串
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`f` | Shape  | [`Shape`](../etype#Shape) | 

##### **返回值**
`Str` : 字符串

### `dynamic_to_str` <span id="dynamic_to_str"></span>
##### **描述**
动态类型数转字符串
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`f` | 动态类型  | [`DynamicTypeMeta`](../etype#DynamicTypeMeta) | 

##### **返回值**
`Str` : 字符串

### `int32_to_str` <span id="int32_to_str"></span>
##### **描述**
int32_to_str
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`f` | int32  | [`Int32`](../etype#Int32) | 

##### **返回值**
`Str` : 字符串

### `bool_to_str` <span id="bool_to_str"></span>
##### **描述**
布尔型转字符串
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`f` | 布尔值  | [`Bool`](../etype#Bool) | 

##### **返回值**
`Str` : 字符串

### `i2s` <span id="i2s"></span>
##### **描述**
整数转字符串
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`i` | 整数值  | [`Int32`](../etype#Int32) | 

##### **返回值**
`Str` : 字符串

### `join_s` <span id="join_s"></span>
##### **描述**
字符串拼接
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`s1` | 字符串  | [`Str`](../etype#Str) | 
`s2` | 字符串  | [`Str`](../etype#Str) | 

##### **返回值**
`Str` : 字符串

### `fixed_arithmetic_operation` <span id="fixed_arithmetic_operation"></span>
##### **描述**
定点数运算
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`a` | x  | [`Fixed`](../etype#Fixed) | 
`o` | operator(+,-*,/)  | [`Str`](../etype#Str) | 
`b` | y  | [`Fixed`](../etype#Fixed) | 

##### **返回值**
`Fixed` : 定点数

### `fixed_plus_one` <span id="fixed_plus_one"></span>
##### **描述**
定点数自增1
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`fix_value` | x  | [`Fixed`](../etype#Fixed) | 

##### **返回值**
`Fixed` : 定点数

### `fixed_min` <span id="fixed_min"></span>
##### **描述**
取两个定点数最小值
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`fix_value1` | x1  | [`Fixed`](../etype#Fixed) | 
`fix_value2` | x2  | [`Fixed`](../etype#Fixed) | 

##### **返回值**
`Fixed` : 定点数

### `fixed_max` <span id="fixed_max"></span>
##### **描述**
取两个定点数最小大值
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`fix_value1` | x1  | [`Fixed`](../etype#Fixed) | 
`fix_value2` | x2  | [`Fixed`](../etype#Fixed) | 

##### **返回值**
`Fixed` : 定点数

### `angle_arithmetic_operation` <span id="angle_arithmetic_operation"></span>
##### **描述**
角度计算
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`a` | x  | [`Fixed`](../etype#Fixed) | 
`o` | operator(+,-*,/)  | [`Str`](../etype#Str) | 
`b` | y  | [`Fixed`](../etype#Fixed) | 

##### **返回值**
`Fixed` : 定点数

### `degree_to_radian` <span id="degree_to_radian"></span>
##### **描述**
转换度到弧度
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`d` | 角度  | [`Fixed`](../etype#Fixed) | 

##### **返回值**
`Fixed` : 弧度

### `radian_sin` <span id="radian_sin"></span>
##### **描述**
正弦
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`r` | 弧度  | [`Fixed`](../etype#Fixed) | 

##### **返回值**
`Fixed` : 定点数

### `radian_cos` <span id="radian_cos"></span>
##### **描述**
余弦
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`r` | 弧度  | [`Fixed`](../etype#Fixed) | 

##### **返回值**
`Fixed` : 定点数

### `radian_tan` <span id="radian_tan"></span>
##### **描述**
正切
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`r` | 弧度  | [`Fixed`](../etype#Fixed) | 

##### **返回值**
`Fixed` : 定点数

### `radian_asin` <span id="radian_asin"></span>
##### **描述**
反正弦
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`r` | 定点数  | [`Fixed`](../etype#Fixed) | 

##### **返回值**
`Fixed` : 弧度

### `radian_acos` <span id="radian_acos"></span>
##### **描述**
反余弦
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`r` | 定点数  | [`Fixed`](../etype#Fixed) | 

##### **返回值**
`Fixed` : 弧度

### `radian_atan` <span id="radian_atan"></span>
##### **描述**
反正切
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`r` | 定点数  | [`Fixed`](../etype#Fixed) | 

##### **返回值**
`Fixed` : 弧度

### `radian_atan_x_y` <span id="radian_atan_x_y"></span>
##### **描述**
反正切(Y:X)
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`y` | 定点数  | [`Fixed`](../etype#Fixed) | 
`x` | 定点数  | [`Fixed`](../etype#Fixed) | 

##### **返回值**
`Fixed` : 弧度

### `sqrt` <span id="sqrt"></span>
##### **描述**
平方根
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`x` | 定点数  | [`Fixed`](../etype#Fixed) | 

##### **返回值**
`Fixed` : 定点数

### `pow` <span id="pow"></span>
##### **描述**
求幂
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`f` | 定点数  | [`Fixed`](../etype#Fixed) | 
`n` | 整数  | [`Int32`](../etype#Int32) | 

##### **返回值**
`Fixed` : 定点数

### `abs` <span id="abs"></span>
##### **描述**
求绝对值
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`f` | 定点数  | [`Fixed`](../etype#Fixed) | 

##### **返回值**
`Fixed` : 定点数

### `interval` <span id="interval"></span>
##### **描述**
区间
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`x0` | 定点数  | [`Fixed`](../etype#Fixed) | 
`x1` | 定点数  | [`Fixed`](../etype#Fixed) | 
`x2` | 定点数  | [`Fixed`](../etype#Fixed) | 

##### **返回值**
`Fixed` : 定点数

### `nearest_quadratic_number` <span id="nearest_quadratic_number"></span>
##### **描述**
找最近的二次方数
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`x` | 定点数  | [`Fixed`](../etype#Fixed) | 

##### **返回值**
`Int32` : 二次方数

### `ceil` <span id="ceil"></span>
##### **描述**
最小整数
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`f` | 定点数  | [`Fixed`](../etype#Fixed) | 

##### **返回值**
`Int32` : 整数

### `floor` <span id="floor"></span>
##### **描述**
最大整数
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`f` | 定点数  | [`Fixed`](../etype#Fixed) | 

##### **返回值**
`Int32` : 整数

### `interpolate` <span id="interpolate"></span>
##### **描述**
插值
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`x_from` | 定点数  | [`Fixed`](../etype#Fixed) | 
`x_to` | 定点数  | [`Fixed`](../etype#Fixed) | 
`t` | 定点数  | [`Fixed`](../etype#Fixed) | 

##### **返回值**
`Fixed` : 定点数

### `invert_interpolate` <span id="invert_interpolate"></span>
##### **描述**
反插值
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`x_from` | 定点数  | [`Fixed`](../etype#Fixed) | 
`x_to` | 定点数  | [`Fixed`](../etype#Fixed) | 
`res_val` | 定点数  | [`Fixed`](../etype#Fixed) | 

##### **返回值**
`Fixed` : 定点数

### `log10` <span id="log10"></span>
##### **描述**
对数10
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`x` | 定点数  | [`Fixed`](../etype#Fixed) | 

##### **返回值**
`Fixed` : 定点数

### `log` <span id="log"></span>
##### **描述**
对数
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`x1` | 定点数  | [`Fixed`](../etype#Fixed) | 
`x2` | 定点数  | [`Fixed`](../etype#Fixed) | 

##### **返回值**
`Fixed` : 定点数

### `get_max_in_list` <span id="get_max_in_list"></span>
##### **描述**
返回组内最大值
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`l` | 列表  | [`List`](../etype#List) | 

##### **返回值**
`Fixed` : 定点数

### `get_min_in_list` <span id="get_min_in_list"></span>
##### **描述**
返回组内最小值
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`l` | 列表  | [`List`](../etype#List) | 

##### **返回值**
`Fixed` : 定点数

### `round` <span id="round"></span>
##### **描述**
四舍五入
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`x` | 定点数  | [`Fixed`](../etype#Fixed) | 

##### **返回值**
`Fixed` : 定点数

### `sign` <span id="sign"></span>
##### **描述**
返回正负符号
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`f` | 定点数  | [`Fixed`](../etype#Fixed) | 

##### **返回值**
`Fixed` : 定点数

### `round_dec` <span id="round_dec"></span>
##### **描述**
保留X位小数
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`x` | 定点数  | [`Fixed`](../etype#Fixed) | 
`num` | X位小数  | [`Int32`](../etype#Int32) | 
`b` | 是否四舍五入  | [`Bool`](../etype#Bool) | False

##### **返回值**
`Fixed` : 定点数

### `fixed_trigonometric_operation` <span id="fixed_trigonometric_operation"></span>
##### **描述**
定点数三角函数运算
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`o` | method(sin,cos,tan)  | [`Str`](../etype#Str) | 
`a` | 定点数  | [`Fixed`](../etype#Fixed) | 

##### **返回值**
`Fixed` : 定点数

### `get_player_group_num` <span id="get_player_group_num"></span>
##### **描述**
玩家组的玩家数量
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`player_group` | 玩家组  | [`RoleGroup`](../etype#RoleGroup) | 

##### **返回值**
`Int32` : 玩家数量

### `get_related_ability` <span id="get_related_ability"></span>
##### **描述**
获取Actor关联技能
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`actor` | Actor  | [`Actor`](../etype#Actor) | 

##### **返回值**
`Ability` : 技能

### `add_actor_timer` <span id="add_actor_timer"></span>
##### **描述**
为Actor添加定时器
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`actor` | actor  | [`Actor`](../etype#Actor) | 
`name` | 定时器名称  | [`Str`](../etype#Str) | 
`once` | 字符串  | [`Str`](../etype#Str) | 
`interval` | 定点数  | [`Fixed`](../etype#Fixed) | 
`context` | 字典  | [`Dict`](../etype#Dict) | 

##### **返回值**
无

### `stop_actor_timer` <span id="stop_actor_timer"></span>
##### **描述**
关闭Actor计时器
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`actor` | actor  | [`Actor`](../etype#Actor) | 
`name` | 字符串  | [`Str`](../etype#Str) | 

##### **返回值**
无

### `get_fixed_coord_index` <span id="get_fixed_coord_index"></span>
##### **描述**
获取FVector3的其中一个值
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`point` | FVector3  | [`FVector3`](../etype#FVector3) | 
`index` | 序号(0-2)  | [`Int32`](../etype#Int32) | 

##### **返回值**
`Fixed` : 定点数

### `clear_group` <span id="clear_group"></span>
##### **描述**
清空列表
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`list1` | 列表  | [`List`](../etype#List) | 

##### **返回值**
无

### `set_list_with_length` <span id="set_list_with_length"></span>
##### **描述**
将第二个列表的值赋值给第一个列表 不改变第一个列表的长度
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`list1` | 列表  | [`List`](../etype#List) | 
`list2` | 列表  | [`List`](../etype#List) | 

##### **返回值**
无

### `judge_role_in_group` <span id="judge_role_in_group"></span>
##### **描述**
判断玩家是否在玩家组
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`role` | 玩家  | [`Role`](../etype#Role) | 
`group` | 玩家组  | [`RoleGroup`](../etype#RoleGroup) | 

##### **返回值**
`Bool` : 布尔值

### `is_unit_alive` <span id="is_unit_alive"></span>
##### **描述**
判断单位是否活着
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`unit` | 单位  | [`Unit`](../etype#Unit) | None

##### **返回值**
`Bool` : 布尔值

### `get_empty_unit_key_pool` <span id="get_empty_unit_key_pool"></span>
##### **描述**
获取空的单位编号池
##### **参数**
无

##### **返回值**
`UnitKeyPool` : 单位编号池

### `get_point_in_route` <span id="get_point_in_route"></span>
##### **描述**
获取路径中某点
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`road_point_list` | 路径  | [`Road`](../etype#Road) | 
`index` | 下标  | [`UInt32`](../etype#UInt32) | 

##### **返回值**
`FPoint` : 点

### `get_point_rotate_y` <span id="get_point_rotate_y"></span>
##### **描述**
点绕Y轴旋转(角度制)
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`point` | 点  | [`FPoint`](../etype#FPoint) | 
`angle` | 旋转  | [`Fixed`](../etype#Fixed) | 

##### **返回值**
`FPoint` : 点

### `str_to_int` <span id="str_to_int"></span>
##### **描述**
字符串转整数
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`s` | 字符串  | [`Str`](../etype#Str) | 

##### **返回值**
`Int32` : 返回值

### `str_to_bool` <span id="str_to_bool"></span>
##### **描述**
字符串转布尔值
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`s` | 字符串  | [`Str`](../etype#Str) | 

##### **返回值**
`Bool` : 布尔值

### `str_to_fixed` <span id="str_to_fixed"></span>
##### **描述**
字符串转定点数
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`s` | 字符串  | [`Str`](../etype#Str) | 

##### **返回值**
`Fixed` : 返回值

### `delete_sub_str` <span id="delete_sub_str"></span>
##### **描述**
删除子字符串
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`str1` | 原字符串  | [`Str`](../etype#Str) | 
`sub_str` | 子字符串   | [`Str`](../etype#Str) | 
`only_one` | 仅一次  | [`Bool`](../etype#Bool) | 

##### **返回值**
`Str` : 原字符串

### `extract_str` <span id="extract_str"></span>
##### **描述**
截取子字符串
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`str1` | 原字符串  | [`Str`](../etype#Str) | 
`index1` | 左下标  | [`Int32`](../etype#Int32) | 
`index2` | 右下标  | [`Int32`](../etype#Int32) | 

##### **返回值**
`Str` : 截取后字符串

### `length_of_str` <span id="length_of_str"></span>
##### **描述**
获取字符串长度
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`str1` | 字符串  | [`Str`](../etype#Str) | 

##### **返回值**
`Int32` : 字符串长度

### `str_to_upper_lower` <span id="str_to_upper_lower"></span>
##### **描述**
字符串大小写统一
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`str1` | 原字符串  | [`Str`](../etype#Str) | 
`is_upper` | 是否大写  | [`Bool`](../etype#Bool) | 

##### **返回值**
`Str` : 处理后字符串

### `pos_in_str` <span id="pos_in_str"></span>
##### **描述**
子字符串位置
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`str1` | 原字符串  | [`Str`](../etype#Str) | 
`sub_str` | 子字符串  | [`Str`](../etype#Str) | 

##### **返回值**
`Int32` : 子字符串位置

### `api_int_to_key` <span id="api_int_to_key"></span>
##### **描述**
整数转化为特效类型
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`integer` | 整数  | [`Int32`](../etype#Int32) | 

##### **返回值**
`ProjectileKey` : 投射物类型

### `api_key_to_int` <span id="api_key_to_int"></span>
##### **描述**
将投射物类型转化为整数
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`key` | 投射物类型  | [`ProjectileKey`](../etype#ProjectileKey) | 

##### **返回值**
`Int32` : 整数

### `unit_command_type_to_str` <span id="unit_command_type_to_str"></span>
##### **描述**
单位命令类型转字符串
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`val` | 单位命令类型  | [`UnitCommandType`](../etype#UnitCommandType) | 

##### **返回值**
`Str` : 字符串

### `str_to_unit_command_type` <span id="str_to_unit_command_type"></span>
##### **描述**
字符串转单位命令类型
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`val` | 字符串  | [`Str`](../etype#Str) | 

##### **返回值**
`UnitCommandType` : 单位命令类型

### `ability_cast_type_to_str` <span id="ability_cast_type_to_str"></span>
##### **描述**
技能释放类型转字符串
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`val` | 技能释放类型  | [`AbilityCastType`](../etype#AbilityCastType) | 

##### **返回值**
`Str` : 字符串

### `str_to_ability_cast_type` <span id="str_to_ability_cast_type"></span>
##### **描述**
字符串转技能释放类型
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`val` | 技能释放类型  | [`AbilityCastType`](../etype#AbilityCastType) | 

##### **返回值**
`Str` : 字符串

### `poly_area_to_str` <span id="poly_area_to_str"></span>
##### **描述**
多边形区域转字符串
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`obj` | 多边形区域  | [`PolyArea`](../etype#PolyArea) | 

##### **返回值**
`Str` : 字符串

### `projectile_group_to_str` <span id="projectile_group_to_str"></span>
##### **描述**
投射物组转字符串
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`obj` | 投射物组  | [`ProjectileGroup`](../etype#ProjectileGroup) | 

##### **返回值**
`Str` : 字符串

### `role_relation_to_str` <span id="role_relation_to_str"></span>
##### **描述**
玩家关系转字符串
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`val` | 玩家关系  | [`RoleRelation`](../etype#RoleRelation) | 

##### **返回值**
`Str` : 字符串

### `str_to_role_relation` <span id="str_to_role_relation"></span>
##### **描述**
字符串转玩家关系
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`val` | 字符串  | [`Str`](../etype#Str) | 

##### **返回值**
`RoleRelation` : 玩家关系

### `unit_key_pool_to_str` <span id="unit_key_pool_to_str"></span>
##### **描述**
单位编号池转字符串
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`obj` | 单位编号池  | [`UnitKeyPool`](../etype#UnitKeyPool) | 

##### **返回值**
`Str` : 字符串

### `unit_type_to_str` <span id="unit_type_to_str"></span>
##### **描述**
单位分类转字符串
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`val` | 单位类型  | [`UnitType`](../etype#UnitType) | 

##### **返回值**
`Str` : 字符串

### `str_to_unit_type` <span id="str_to_unit_type"></span>
##### **描述**
字符串转单位分类
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`val` | 字符串  | [`Str`](../etype#Str) | 

##### **返回值**
`UnitType` : 单位类型

### `timer_to_str` <span id="timer_to_str"></span>
##### **描述**
计时器转字符串
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`val` | 计时器  | [`Timer`](../etype#Timer) | 

##### **返回值**
`Str` : 字符串

### `unit_to_str` <span id="unit_to_str"></span>
##### **描述**
单位转字符串
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`obj` | 单位  | [`Unit`](../etype#Unit) | 

##### **返回值**
`Str` : 字符串

### `unit_group_to_str` <span id="unit_group_to_str"></span>
##### **描述**
单位组转字符串
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`obj` | 单位组  | [`UnitGroup`](../etype#UnitGroup) | 

##### **返回值**
`Str` : 字符串

### `item_to_str` <span id="item_to_str"></span>
##### **描述**
物品转字符串
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`obj` | 物品对象  | [`Item`](../etype#Item) | 

##### **返回值**
`Str` : 字符串

### `item_group_to_str` <span id="item_group_to_str"></span>
##### **描述**
物品组转字符串
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`obj` | 物品组  | [`ItemGroup`](../etype#ItemGroup) | 

##### **返回值**
`Str` : 字符串

### `role_to_str` <span id="role_to_str"></span>
##### **描述**
玩家转字符串
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`obj` | 玩家  | [`Role`](../etype#Role) | 

##### **返回值**
`Str` : 字符串

### `role_group_to_str` <span id="role_group_to_str"></span>
##### **描述**
玩家组转字符串
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`obj` | 玩家组  | [`RoleGroup`](../etype#RoleGroup) | 

##### **返回值**
`Str` : 字符串

### `role_status_to_str` <span id="role_status_to_str"></span>
##### **描述**
玩家状态转字符串
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`val` | 玩家状态  | [`RoleStatus`](../etype#RoleStatus) | 

##### **返回值**
`Str` : 字符串

### `str_to_role_status` <span id="str_to_role_status"></span>
##### **描述**
字符串转玩家状态
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`val` | 字符串  | [`Str`](../etype#Str) | 

##### **返回值**
`RoleStatus` : 玩家状态

### `role_type_to_str` <span id="role_type_to_str"></span>
##### **描述**
玩家控制者转字符串
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`val` | 玩家控制者类型  | [`RoleType`](../etype#RoleType) | 

##### **返回值**
`Str` : 字符串

### `str_to_role_type` <span id="str_to_role_type"></span>
##### **描述**
字符串转玩家控制者
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`val` | 字符串  | [`Str`](../etype#Str) | 

##### **返回值**
`RoleType` : 玩家控制者类型

### `ability_to_str` <span id="ability_to_str"></span>
##### **描述**
技能转字符串
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`obj` | 技能对象  | [`Ability`](../etype#Ability) | 

##### **返回值**
`Str` : 字符串

### `ability_type_to_str` <span id="ability_type_to_str"></span>
##### **描述**
技能槽位类型转字符串
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`val` | 技能类型  | [`AbilityType`](../etype#AbilityType) | 

##### **返回值**
`Str` : 字符串

### `str_to_ability_type` <span id="str_to_ability_type"></span>
##### **描述**
字符串转技能槽位类型
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`val` | 技能类型  | [`Str`](../etype#Str) | 

##### **返回值**
`AbilityType` : 技能类型

### `rect_area_to_str` <span id="rect_area_to_str"></span>
##### **描述**
矩形区域转字符串
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`obj` | 矩形区域  | [`RecArea`](../etype#RecArea) | 

##### **返回值**
`Str` : 字符串

### `circle_area_to_str` <span id="circle_area_to_str"></span>
##### **描述**
圆形区域转字符串
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`obj` | 圆形区域  | [`CirArea`](../etype#CirArea) | 

##### **返回值**
`Str` : 字符串

### `road_to_str` <span id="road_to_str"></span>
##### **描述**
路径转字符串
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`obj` | 路径  | [`Road`](../etype#Road) | 

##### **返回值**
`Str` : 字符串

### `dest_to_str` <span id="dest_to_str"></span>
##### **描述**
可破坏物转字符串
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`obj` | 可破坏物对象  | [`Destructible`](../etype#Destructible) | 

##### **返回值**
`Str` : 字符串

### `project_to_str` <span id="project_to_str"></span>
##### **描述**
投射物转字符串
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`obj` | 投掷物对象  | [`ProjectileEntity`](../etype#ProjectileEntity) | 

##### **返回值**
`Str` : 字符串

### `modifier_entity_to_str` <span id="modifier_entity_to_str"></span>
##### **描述**
魔法效果转字符串
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`obj` | 魔法效果对象  | [`ModifierEntity`](../etype#ModifierEntity) | 

##### **返回值**
`Str` : 字符串

### `modifier_type_to_str` <span id="modifier_type_to_str"></span>
##### **描述**
魔法效果类别转字符串
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`val` | 魔法效果类别  | [`ModifierType`](../etype#ModifierType) | 

##### **返回值**
`Str` : 字符串

### `str_to_modifier_type` <span id="str_to_modifier_type"></span>
##### **描述**
字符串转魔法效果类别
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`val` | 字符串  | [`Str`](../etype#Str) | 

##### **返回值**
`ModifierType` : 魔法效果类别

### `modifier_effect_type_to_str` <span id="modifier_effect_type_to_str"></span>
##### **描述**
魔法效果影响类型转字符串
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`val` | 魔法效果影响类别  | [`ModifierEffectType`](../etype#ModifierEffectType) | 

##### **返回值**
`Str` : 字符串

### `str_to_modifier_effect_type` <span id="str_to_modifier_effect_type"></span>
##### **描述**
字符串转魔法效果影响类型
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`val` | 字符串  | [`Str`](../etype#Str) | 

##### **返回值**
`ModifierEffectType` : 魔法效果影响类别

### `camp_to_str` <span id="camp_to_str"></span>
##### **描述**
阵营转字符串
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`obj` | 阵营对象  | [`Camp`](../etype#Camp) | 

##### **返回值**
`Str` : 字符串

### `random_pool_to_str` <span id="random_pool_to_str"></span>
##### **描述**
随机池转字符串
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`obj` | 随机池  | [`RandomPool`](../etype#RandomPool) | 

##### **返回值**
`Str` : 字符串

### `keyboard_key_to_str` <span id="keyboard_key_to_str"></span>
##### **描述**
键盘按键转字符串
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`obj` | 键盘按键  | [`KeyboardKey`](../etype#KeyboardKey) | 

##### **返回值**
`Str` : 字符串

### `str_to_keyboard_key` <span id="str_to_keyboard_key"></span>
##### **描述**
字符串转键盘按键
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`obj` | 字符串  | [`Str`](../etype#Str) | 

##### **返回值**
`KeyboardKey` : 键盘按键

### `mouse_key_to_str` <span id="mouse_key_to_str"></span>
##### **描述**
鼠标按键转字符串
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`obj` | 鼠标按键  | [`MouseKey`](../etype#MouseKey) | 

##### **返回值**
`Str` : 字符串

### `str_to_mouse_key` <span id="str_to_mouse_key"></span>
##### **描述**
字符串转鼠标按键
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`obj` | 字符串  | [`Str`](../etype#Str) | 

##### **返回值**
`MouseKey` : 鼠标按键

### `mouse_wheel_to_str` <span id="mouse_wheel_to_str"></span>
##### **描述**
鼠标滚轮转字符串
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`obj` | 鼠标滚轮  | [`MouseWheel`](../etype#MouseWheel) | 

##### **返回值**
`Str` : 字符串

### `str_to_mouse_wheel` <span id="str_to_mouse_wheel"></span>
##### **描述**
字符串转鼠标滚轮
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`obj` | 字符串  | [`Str`](../etype#Str) | 

##### **返回值**
`MouseWheel` : 鼠标滚轮

### `trigger_to_str` <span id="trigger_to_str"></span>
##### **描述**
触发器转字符串
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`obj` | 触发器  | [`DynamicTypeMeta`](../etype#DynamicTypeMeta) | 

##### **返回值**
`Str` : 字符串

### `table_to_str` <span id="table_to_str"></span>
##### **描述**
表转字符串
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`obj` | 表  | [`Table`](../etype#Table) | 

##### **返回值**
`Str` : 字符串

### `damage_type_to_str` <span id="damage_type_to_str"></span>
##### **描述**
伤害类型转字符串
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`obj` | 伤害类型  | [`Int32`](../etype#Int32) | 

##### **返回值**
`Str` : 字符串

### `str_to_damage_type` <span id="str_to_damage_type"></span>
##### **描述**
字符串转伤害类型
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`obj` | 字符串  | [`Str`](../etype#Str) | 

##### **返回值**
`Int32` : 伤害类型

### `unit_attr_type_to_str` <span id="unit_attr_type_to_str"></span>
##### **描述**
单位属性类型转字符串
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`obj` | 属性类型  | [`Str`](../etype#Str) | 

##### **返回值**
`Str` : 字符串

### `str_to_unit_attr_type` <span id="str_to_unit_attr_type"></span>
##### **描述**
字符串转单位属性类型
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`obj` | 字符串  | [`Str`](../etype#Str) | 

##### **返回值**
`Str` : 属性类型

### `str_to_ui_event` <span id="str_to_ui_event"></span>
##### **描述**
字符串转UI事件
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`obj` | 字符串  | [`Str`](../etype#Str) | 

##### **返回值**
`Str` : UI事件

### `comp_to_str` <span id="comp_to_str"></span>
##### **描述**
控件转字符串
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`obj` | 控件  | [`Str`](../etype#Str) | 

##### **返回值**
`Str` : 字符串

### `get_client_language_type` <span id="get_client_language_type"></span>
##### **描述**
获取本地语言环境
##### **参数**
无

##### **返回值**
`LanguageType` : 语言环境
