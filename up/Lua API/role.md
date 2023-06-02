# Role
## 描述
玩家

-----
## 方法列表
方法名  | 简述  |
:----- | :--- |
[`api_get_role_id`](#api_get_role_id) | 玩家获取玩家ID |
[`api_get_camp_id`](#api_get_camp_id) | 获取玩家所属阵营ID |
[`get_role_id_num`](#get_role_id_num) | 获取玩家ID数值 |
[`get_camp_id_num`](#get_camp_id_num) | 获取玩家所属阵营ID数值 |
[`get_role_name`](#get_role_name) | 获取玩家名字 |
[`get_role__unique_name`](#get_role__unique_name) | 获取玩家唯一名字 |
[`get_role_plat_map_level`](#get_role_plat_map_level) | 获取玩家平台等级 |
[`get_role_type`](#get_role_type) | 获取玩家控制者类型 |
[`is_middle_join`](#is_middle_join) | 玩家是否中途加入 |
[`api_get_camp`](#api_get_camp) | 获取玩家所属阵营对象 |
[`set_attr_val`](#set_attr_val) | 玩家设置属性 |
[`get_all_unit_id`](#get_all_unit_id) | 获取玩家所有单位对象 |
[`set_role_exp_rate`](#set_role_exp_rate) | 设置玩家经验获得率 |
[`get_role_exp_rate`](#get_role_exp_rate) | 获得玩家经验倍率 |
[`set_role_spawn_point`](#set_role_spawn_point) | 设置玩家出生点 |
[`get_role_spawn_point`](#get_role_spawn_point) | 获取玩家出生点 |
[`api_set_camp`](#api_set_camp) | 设置玩家队伍ID |
[`set_role_name`](#set_role_name) | 设置玩家名字 |
[`change_role_res`](#change_role_res) | 修改玩家资源 |
[`set_role_res`](#set_role_res) | 设置玩家资源 |
[`get_role_res`](#get_role_res) | 获得玩家资源 |
[`set_group_navigate_mode`](#set_group_navigate_mode) | 设置玩家群体寻路严格模式 |
[`set_save_data_int_value`](#set_save_data_int_value) | 设置整数型参数到玩家存档栏位 |
[`set_save_data_fixed_value`](#set_save_data_fixed_value) | 设置实数型参数到玩家存档栏位 |
[`set_save_data_bool_value`](#set_save_data_bool_value) | 设置布尔型参数到玩家存档栏位 |
[`set_save_data_str_value`](#set_save_data_str_value) | 设置字符串型参数到玩家存档栏位 |
[`set_save_data_table_value`](#set_save_data_table_value) | 设置表型参数到玩家存档栏位 |
[`upload_save_data`](#upload_save_data) | 上传玩家存档数据 |
[`add_global_map_archive_data`](#add_global_map_archive_data) | 增加当前地图的指定key的存档值 |
[`get_player_rank_num`](#get_player_rank_num) | 获取玩家指定的全局存档key值对应排行榜的排名 |
[`get_player_archive_rank_num`](#get_player_archive_rank_num) | 获取玩家指定的个人存档栏位对应排行榜的排名 |
[`download_save_data`](#download_save_data) | 下载玩家存档数据 |
[`reset_download_save_data_callback`](#reset_download_save_data_callback) | 重置下载档案数据回调 |
[`get_save_data_int_value`](#get_save_data_int_value) | 读取整数型玩家存档数据 |
[`get_save_data_fixed_value`](#get_save_data_fixed_value) | 读取实数型玩家存档数据 |
[`get_save_data_bool_value`](#get_save_data_bool_value) | 读取布尔型玩家存档数据 |
[`get_save_data_str_value`](#get_save_data_str_value) | 读取字符串型玩家存档数据 |
[`get_save_data_table_value`](#get_save_data_table_value) | 读取表型玩家存档数据 |
[`api_use_store_item`](#api_use_store_item) | 玩家使用收费道具 |
[`get_store_item_cnt`](#get_store_item_cnt) | 获取玩家收费道具数量 |
[`get_visibility_of_unit`](#get_visibility_of_unit) | 玩家是否拥有单位的可见性 |
[`api_change_tech_level`](#api_change_tech_level) | 修改玩家科技等级 |
[`api_set_tech_level`](#api_set_tech_level) | 修改玩家科技等级 |
[`api_get_tech_level`](#api_get_tech_level) | 获取玩家科技等级 |
[`is_point_visible_to_player`](#is_point_visible_to_player) | 点对于玩家是否可见 |
[`is_point_in_fog`](#is_point_in_fog) | 点是否在迷雾中 |
[`is_point_in_shadow`](#is_point_in_shadow) | 点是否在黑色阴影中 |
[`get_role_status`](#get_role_status) | 获取玩家状态 |
[`set_role_hostility`](#set_role_hostility) | 设置玩家是否是敌对关系 |
[`players_is_alliance`](#players_is_alliance) | 玩家是否是同盟关系 |
[`players_is_enemy`](#players_is_enemy) | 玩家是否是敌对关系 |
[`share_source_player_vision_to_target`](#share_source_player_vision_to_target) | 原始玩家对目标玩家开放视野 |
[`close_source_player_vision_to_target`](#close_source_player_vision_to_target) | 原始玩家对目标玩家关闭视野 |
[`share_source_unit_vision_to_target`](#share_source_unit_vision_to_target) | 原始单位对目标玩家开放视野 |
[`close_source_unit_vision_to_target`](#close_source_unit_vision_to_target) | 原始单位对目标玩家关闭视野 |
[`role_select_unit`](#role_select_unit) | 选中单位或单位组 |
[`set_role_mouse_left_click`](#set_role_mouse_left_click) | 开/关玩家鼠标的点选 |
[`set_role_mouse_move_select`](#set_role_mouse_move_select) | 开/关玩家的鼠标的框选 |
[`set_role_mouse_wheel`](#set_role_mouse_wheel) | 开/关玩家的鼠标滚轮 |
[`set_role_vignetting_enable`](#set_role_vignetting_enable) | 设置玩家暗角开关 |
[`set_role_vignetting_size`](#set_role_vignetting_size) | 设置玩家暗角大小 |
[`set_role_vignetting_breath_rate`](#set_role_vignetting_breath_rate) | 设置玩家暗角呼吸周期 |
[`set_role_vignetting_change_range`](#set_role_vignetting_change_range) | 设置玩家暗角变化幅度 |
[`set_role_vignetting_color`](#set_role_vignetting_color) | 设置玩家暗角颜色 |
[`api_set_role_editable_game_func`](#api_set_role_editable_game_func) | 设置玩家的基础操作快捷键（过滤掉禁止修改的） |
[`api_set_role_all_game_func_enable`](#api_set_role_all_game_func_enable) | 设置玩家的基础操作开关（包含所有基础操作） |
[`api_is_conf_of_editable_game_func`](#api_is_conf_of_editable_game_func) | 基础操作响应的快捷键是否已被占用（过滤掉禁止修改的） |
[`api_get_editable_game_func_of_shortcut`](#api_get_editable_game_func_of_shortcut) | 获取玩家响应键盘按键的基础操作（过滤掉禁止修改的） |
[`set_bool_hit_point_data`](#set_bool_hit_point_data) | 设置玩家布尔埋点数据 |
[`set_int_hit_point_data`](#set_int_hit_point_data) | 设置玩家整型埋点数据 |
[`api_set_follow_distance`](#api_set_follow_distance) | 设置跟随距离 |


-----
## 方法

### `api_get_role_id` <span id="api_get_role_id"></span>
##### **描述**
玩家获取玩家ID
##### **参数**
无

##### **返回值**
`RoleID` : 玩家ID

### `api_get_camp_id` <span id="api_get_camp_id"></span>
##### **描述**
获取玩家所属阵营ID
##### **参数**
无

##### **返回值**
`Int64` : 玩家所属阵营ID

### `get_role_id_num` <span id="get_role_id_num"></span>
##### **描述**
获取玩家ID数值
##### **参数**
无

##### **返回值**
`UInt32` : 玩家ID数值

### `get_camp_id_num` <span id="get_camp_id_num"></span>
##### **描述**
获取玩家所属阵营ID数值
##### **参数**
无

##### **返回值**
`UInt32` : 玩家所属阵营ID数值

### `get_role_name` <span id="get_role_name"></span>
##### **描述**
获取玩家名字
##### **参数**
无

##### **返回值**
`Str` : 玩家名字

### `get_role__unique_name` <span id="get_role__unique_name"></span>
##### **描述**
获取玩家唯一名字
##### **参数**
无

##### **返回值**
`Str` : 玩家唯一名字

### `get_role_plat_map_level` <span id="get_role_plat_map_level"></span>
##### **描述**
获取玩家平台等级
##### **参数**
无

##### **返回值**
`Int32` : 玩家等级

### `get_role_type` <span id="get_role_type"></span>
##### **描述**
获取玩家控制者类型
##### **参数**
无

##### **返回值**
`RoleType` : 玩家控制者类型

### `is_middle_join` <span id="is_middle_join"></span>
##### **描述**
玩家是否中途加入
##### **参数**
无

##### **返回值**
`Bool` : 是否中途加入

### `api_get_camp` <span id="api_get_camp"></span>
##### **描述**
获取玩家所属阵营对象
##### **参数**
无

##### **返回值**
`Camp` : 阵营对象

### `set_attr_val` <span id="set_attr_val"></span>
##### **描述**
玩家设置属性
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`k` | 属性名  | [`Str`](../etype#Str) | 
`value` | 属性值  | [`Int32`](../etype#Int32) | 

##### **返回值**
无

### `get_all_unit_id` <span id="get_all_unit_id"></span>
##### **描述**
获取玩家所有单位对象
##### **参数**
无

##### **返回值**
`UnitGroup` : 单位对象列表

### `set_role_exp_rate` <span id="set_role_exp_rate"></span>
##### **描述**
设置玩家经验获得率
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`rate` | 倍率  | [`Float`](../etype#Float) | 

##### **返回值**
无

### `get_role_exp_rate` <span id="get_role_exp_rate"></span>
##### **描述**
获得玩家经验倍率
##### **参数**
无

##### **返回值**
`Fixed` : 返回倍率

### `set_role_spawn_point` <span id="set_role_spawn_point"></span>
##### **描述**
设置玩家出生点
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`point` | 点  | [`Point`](../etype#Point) | 

##### **返回值**
无

### `get_role_spawn_point` <span id="get_role_spawn_point"></span>
##### **描述**
获取玩家出生点
##### **参数**
无

##### **返回值**
`FVector3` : 返回出生点位置

### `api_set_camp` <span id="api_set_camp"></span>
##### **描述**
设置玩家队伍ID
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`new_camp` | 队伍ID  | [`Camp`](../etype#Camp) | 

##### **返回值**
无

### `set_role_name` <span id="set_role_name"></span>
##### **描述**
设置玩家名字
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`name` | 名字  | [`Str`](../etype#Str) | 

##### **返回值**
无

### `change_role_res` <span id="change_role_res"></span>
##### **描述**
修改玩家资源
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`res_key` | 资源名  | [`RoleResKey`](../etype#RoleResKey) | 
`res_cnt` | 资源值  | [`Fixed`](../etype#Fixed) | 

##### **返回值**
无

### `set_role_res` <span id="set_role_res"></span>
##### **描述**
设置玩家资源
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`res_key` | 资源名  | [`RoleResKey`](../etype#RoleResKey) | 
`res_cnt` | 资源值  | [`Fixed`](../etype#Fixed) | 

##### **返回值**
无

### `get_role_res` <span id="get_role_res"></span>
##### **描述**
获得玩家资源
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`res_key` | 资源名  | [`RoleResKey`](../etype#RoleResKey) | 

##### **返回值**
`Fixed` : 资源值

### `set_group_navigate_mode` <span id="set_group_navigate_mode"></span>
##### **描述**
设置玩家群体寻路严格模式
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`group_navigate_mode` | 开启群体寻路严格模式  | [`Bool`](../etype#Bool) | 

##### **返回值**
无

### `set_save_data_int_value` <span id="set_save_data_int_value"></span>
##### **描述**
设置整数型参数到玩家存档栏位
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`index` | 玩家存档栏位  | [`Int32`](../etype#Int32) | 
`value` | 整型参数  | [`Int32`](../etype#Int32) | 

##### **返回值**
无

### `set_save_data_fixed_value` <span id="set_save_data_fixed_value"></span>
##### **描述**
设置实数型参数到玩家存档栏位
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`index` | 玩家存档栏位  | [`Int32`](../etype#Int32) | 
`value` | 实数型参数  | [`Fixed`](../etype#Fixed) | 

##### **返回值**
无

### `set_save_data_bool_value` <span id="set_save_data_bool_value"></span>
##### **描述**
设置布尔型参数到玩家存档栏位
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`index` | 玩家存档栏位  | [`Int32`](../etype#Int32) | 
`value` | 布尔型参数  | [`Bool`](../etype#Bool) | 

##### **返回值**
无

### `set_save_data_str_value` <span id="set_save_data_str_value"></span>
##### **描述**
设置字符串型参数到玩家存档栏位
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`index` | 玩家存档栏位  | [`Int32`](../etype#Int32) | 
`value` | 字符串型参数  | [`Str`](../etype#Str) | 

##### **返回值**
无

### `set_save_data_table_value` <span id="set_save_data_table_value"></span>
##### **描述**
设置表型参数到玩家存档栏位
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`index` | 玩家存档栏位  | [`Int32`](../etype#Int32) | 
`value` | 表型参数  | [`Table`](../etype#Table) | 

##### **返回值**
无

### `upload_save_data` <span id="upload_save_data"></span>
##### **描述**
上传玩家存档数据
##### **参数**
无

##### **返回值**
无

### `add_global_map_archive_data` <span id="add_global_map_archive_data"></span>
##### **描述**
增加当前地图的指定key的存档值
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`key` | 全局存档key值  | [`Str`](../etype#Str) | 
`value` | 增加的数值  | [`Int32`](../etype#Int32) | 

##### **返回值**
无

### `get_player_rank_num` <span id="get_player_rank_num"></span>
##### **描述**
获取玩家指定的全局存档key值对应排行榜的排名
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`rank_key` | 全局存档key值  | [`Str`](../etype#Str) | 

##### **返回值**
`Int32` : 整型

### `get_player_archive_rank_num` <span id="get_player_archive_rank_num"></span>
##### **描述**
获取玩家指定的个人存档栏位对应排行榜的排名
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`archive_key` | 玩家存档栏位  | [`Int32`](../etype#Int32) | 

##### **返回值**
`Int32` : 整型

### `download_save_data` <span id="download_save_data"></span>
##### **描述**
下载玩家存档数据
##### **参数**
无

##### **返回值**
无

### `reset_download_save_data_callback` <span id="reset_download_save_data_callback"></span>
##### **描述**
重置下载档案数据回调
##### **参数**
无

##### **返回值**
无

### `get_save_data_int_value` <span id="get_save_data_int_value"></span>
##### **描述**
读取整数型玩家存档数据
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`index` | 玩家存档栏位  | [`Int32`](../etype#Int32) | 

##### **返回值**
`Int32` : 整型

### `get_save_data_fixed_value` <span id="get_save_data_fixed_value"></span>
##### **描述**
读取实数型玩家存档数据
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`index` | 玩家存档栏位  | [`Int32`](../etype#Int32) | 

##### **返回值**
`Fixed` : 定点数

### `get_save_data_bool_value` <span id="get_save_data_bool_value"></span>
##### **描述**
读取布尔型玩家存档数据
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`index` | 玩家存档栏位  | [`Int32`](../etype#Int32) | 

##### **返回值**
`Bool` : 布尔值

### `get_save_data_str_value` <span id="get_save_data_str_value"></span>
##### **描述**
读取字符串型玩家存档数据
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`index` | 玩家存档栏位  | [`Int32`](../etype#Int32) | 

##### **返回值**
`Str` : 字符串

### `get_save_data_table_value` <span id="get_save_data_table_value"></span>
##### **描述**
读取表型玩家存档数据
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`index` | 玩家存档栏位  | [`Int32`](../etype#Int32) | 

##### **返回值**
`Table` : 表

### `api_use_store_item` <span id="api_use_store_item"></span>
##### **描述**
玩家使用收费道具
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`cnt` | 数量  | [`UInt32`](../etype#UInt32) | 
`no` | 收费道具KEY  | [`StoreKey`](../etype#StoreKey) | 

##### **返回值**
无

### `get_store_item_cnt` <span id="get_store_item_cnt"></span>
##### **描述**
获取玩家收费道具数量
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`no` | 收费道具key  | [`StoreKey`](../etype#StoreKey) | 

##### **返回值**
`UInt32` : 收费道具数量

### `get_visibility_of_unit` <span id="get_visibility_of_unit"></span>
##### **描述**
玩家是否拥有单位的可见性
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`unit` | 单位  | [`Unit`](../etype#Unit) | 

##### **返回值**
`Bool` : 是否可见

### `api_change_tech_level` <span id="api_change_tech_level"></span>
##### **描述**
修改玩家科技等级
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`tech_no` | 科技编号  | [`TechKey`](../etype#TechKey) | 
`delta_lv` | 变化等级  | [`Int32`](../etype#Int32) | 

##### **返回值**
无

### `api_set_tech_level` <span id="api_set_tech_level"></span>
##### **描述**
修改玩家科技等级
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`tech_no` | 科技编号  | [`TechKey`](../etype#TechKey) | 
`lv` | 等级  | [`Int32`](../etype#Int32) | 

##### **返回值**
无

### `api_get_tech_level` <span id="api_get_tech_level"></span>
##### **描述**
获取玩家科技等级
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`tech_no` | 科技编号  | [`TechKey`](../etype#TechKey) | 

##### **返回值**
`UInt32` : 科技等级

### `is_point_visible_to_player` <span id="is_point_visible_to_player"></span>
##### **描述**
点对于玩家是否可见
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`point` | 点  | [`FPoint`](../etype#FPoint) | 

##### **返回值**
`Bool` : 布尔值

### `is_point_in_fog` <span id="is_point_in_fog"></span>
##### **描述**
点是否在迷雾中
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`point` | 点  | [`FPoint`](../etype#FPoint) | 

##### **返回值**
`Bool` : 布尔值

### `is_point_in_shadow` <span id="is_point_in_shadow"></span>
##### **描述**
点是否在黑色阴影中
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`point` | 点  | [`FPoint`](../etype#FPoint) | 

##### **返回值**
`Bool` : 布尔值

### `get_role_status` <span id="get_role_status"></span>
##### **描述**
获取玩家状态
##### **参数**
无

##### **返回值**
`RoleStatus` : 玩家状态

### `set_role_hostility` <span id="set_role_hostility"></span>
##### **描述**
设置玩家是否是敌对关系
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`role` | 玩家  | [`Role`](../etype#Role) | 
`is_enemy` | 玩家  | [`Role`](../etype#Role) | 

##### **返回值**
无

### `players_is_alliance` <span id="players_is_alliance"></span>
##### **描述**
玩家是否是同盟关系
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`role` | 玩家  | [`Role`](../etype#Role) | 

##### **返回值**
`Bool` : 返回值

### `players_is_enemy` <span id="players_is_enemy"></span>
##### **描述**
玩家是否是敌对关系
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`role` | 玩家  | [`Role`](../etype#Role) | 

##### **返回值**
`Bool` : 返回值

### `share_source_player_vision_to_target` <span id="share_source_player_vision_to_target"></span>
##### **描述**
原始玩家对目标玩家开放视野
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`role_2` | 玩家  | [`Role`](../etype#Role) | 

##### **返回值**
`Bool` : 返回值

### `close_source_player_vision_to_target` <span id="close_source_player_vision_to_target"></span>
##### **描述**
原始玩家对目标玩家关闭视野
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`role_2` | 玩家  | [`Role`](../etype#Role) | 

##### **返回值**
`Bool` : 返回值

### `share_source_unit_vision_to_target` <span id="share_source_unit_vision_to_target"></span>
##### **描述**
原始单位对目标玩家开放视野
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`unit` | 单位  | [`Unit`](../etype#Unit) | 

##### **返回值**
`Bool` : 返回值

### `close_source_unit_vision_to_target` <span id="close_source_unit_vision_to_target"></span>
##### **描述**
原始单位对目标玩家关闭视野
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`unit` | 单位  | [`Unit`](../etype#Unit) | 

##### **返回值**
`Bool` : 返回值

### `role_select_unit` <span id="role_select_unit"></span>
##### **描述**
选中单位或单位组
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`unit_or_unit_groupd` | 单位或单位组  | [`DynamicTypeMeta`](../etype#DynamicTypeMeta) | 

##### **返回值**
无

### `set_role_mouse_left_click` <span id="set_role_mouse_left_click"></span>
##### **描述**
开/关玩家鼠标的点选
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`value` | 开/关  | [`Bool`](../etype#Bool) | 

##### **返回值**
无

### `set_role_mouse_move_select` <span id="set_role_mouse_move_select"></span>
##### **描述**
开/关玩家的鼠标的框选
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`value` | 开/关  | [`Bool`](../etype#Bool) | 

##### **返回值**
无

### `set_role_mouse_wheel` <span id="set_role_mouse_wheel"></span>
##### **描述**
开/关玩家的鼠标滚轮
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`value` | 开/关  | [`Bool`](../etype#Bool) | 

##### **返回值**
无

### `set_role_vignetting_enable` <span id="set_role_vignetting_enable"></span>
##### **描述**
设置玩家暗角开关
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`value` | 暗角开关  | [`Bool`](../etype#Bool) | 

##### **返回值**
无

### `set_role_vignetting_size` <span id="set_role_vignetting_size"></span>
##### **描述**
设置玩家暗角大小
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`value` | 暗角大小  | [`Float`](../etype#Float) | 

##### **返回值**
无

### `set_role_vignetting_breath_rate` <span id="set_role_vignetting_breath_rate"></span>
##### **描述**
设置玩家暗角呼吸周期
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`value` | 呼吸周期  | [`Float`](../etype#Float) | 

##### **返回值**
无

### `set_role_vignetting_change_range` <span id="set_role_vignetting_change_range"></span>
##### **描述**
设置玩家暗角变化幅度
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`value` | 变化幅度  | [`Float`](../etype#Float) | 

##### **返回值**
无

### `set_role_vignetting_color` <span id="set_role_vignetting_color"></span>
##### **描述**
设置玩家暗角颜色
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`r` | R  | [`Float`](../etype#Float) | 
`g` | G  | [`Float`](../etype#Float) | 
`b` | B  | [`Float`](../etype#Float) | 
`interval` | Interval  | [`Float`](../etype#Float) | 0

##### **返回值**
无

### `api_set_role_editable_game_func` <span id="api_set_role_editable_game_func"></span>
##### **描述**
设置玩家的基础操作快捷键（过滤掉禁止修改的）
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`game_func_id` | 可编辑操作  | [`EditableGameFunc`](../etype#EditableGameFunc) | 
`normal_key` | 功能键  | [`NormalKey`](../etype#NormalKey) | 
`record_key` | 辅助键  | [`RecordKey`](../etype#RecordKey) | 

##### **返回值**
无

### `api_set_role_all_game_func_enable` <span id="api_set_role_all_game_func_enable"></span>
##### **描述**
设置玩家的基础操作开关（包含所有基础操作）
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`game_func_id` | 所有操作  | [`AllGameFunc`](../etype#AllGameFunc) | 
`is_enable` | 开/关  | [`Bool`](../etype#Bool) | 

##### **返回值**
无

### `api_is_conf_of_editable_game_func` <span id="api_is_conf_of_editable_game_func"></span>
##### **描述**
基础操作响应的快捷键是否已被占用（过滤掉禁止修改的）
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`normal_key` | 功能键  | [`NormalKey`](../etype#NormalKey) | 
`record_key` | 辅助键  | [`RecordKey`](../etype#RecordKey) | 

##### **返回值**
`Bool` : 是否

### `api_get_editable_game_func_of_shortcut` <span id="api_get_editable_game_func_of_shortcut"></span>
##### **描述**
获取玩家响应键盘按键的基础操作（过滤掉禁止修改的）
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`normal_key` | 功能键  | [`NormalKey`](../etype#NormalKey) | 
`record_key` | 辅助  | [`RecordKey`](../etype#RecordKey) | 

##### **返回值**
`EditableGameFunc` : 可修改基础操作

### `set_bool_hit_point_data` <span id="set_bool_hit_point_data"></span>
##### **描述**
设置玩家布尔埋点数据
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`key` | 布尔key  | [`Int64`](../etype#Int64) | 
`value` | 布尔值  | [`Bool`](../etype#Bool) | 

##### **返回值**
无

### `set_int_hit_point_data` <span id="set_int_hit_point_data"></span>
##### **描述**
设置玩家整型埋点数据
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`key` | 整型key  | [`Int64`](../etype#Int64) | 
`value` | 整数  | [`Int64`](../etype#Int64) | 

##### **返回值**
无

### `api_set_follow_distance` <span id="api_set_follow_distance"></span>
##### **描述**
设置跟随距离
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`follow_distance` | 跟随距离  | [`Fixed`](../etype#Fixed) | 

##### **返回值**
无
