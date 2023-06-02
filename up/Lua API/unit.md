# Unit
## 描述
游戏逻辑中的单位对象。

-----
## 方法列表
方法名  | 简述  |
:----- | :--- |
[`api_get_id`](#api_get_id) | 获取单位ID |
[`api_get_key`](#api_get_key) | 获取单位编号 |
[`api_get_camp_id`](#api_get_camp_id) | 获取单位所属阵营id |
[`api_get_role_id`](#api_get_role_id) | 获取单位所属玩家ID |
[`api_get_role`](#api_get_role) | 获取单位所属玩家 |
[`api_get_camp`](#api_get_camp) | 获取单位所属阵营 |
[`api_get_type`](#api_get_type) | 获取单位类型 |
[`api_get_name`](#api_get_name) | 获取单位名称 |
[`add_timer`](#add_timer) | 添加定时器 |
[`add_repeat_timer`](#add_repeat_timer) | 添加周期定时器 |
[`cancel_timer`](#cancel_timer) | 取消定时器 |
[`api_remove_kv`](#api_remove_kv) | 单位移除键值对 |
[`api_is_alive`](#api_is_alive) | 单位是否存活 |
[`api_hide_head_bar`](#api_hide_head_bar) | 隐藏头顶信息 |
[`has_tag`](#has_tag) | 单位是否拥有标签 |
[`api_revive`](#api_revive) | 复活单位 |
[`api_is_destroyed`](#api_is_destroyed) | 单位是否已销毁 |
[`api_delete`](#api_delete) | 删除单位 |
[`api_kill`](#api_kill) | 强制单位死亡 |
[`api_get_icon`](#api_get_icon) | 获取单位图标路径 |
[`api_get_unit_pic`](#api_get_unit_pic) | 获取单位图片路径 |
[`api_get_parent_unit`](#api_get_parent_unit) | 获取单位的父单位 |
[`api_set_hp_color`](#api_set_hp_color) | 改变单位血条颜色 |
[`api_switch_atk_assist_record`](#api_switch_atk_assist_record) | 开启/关闭伤害及助攻统计 |
[`api_is_in_range`](#api_is_in_range) | 单位/点是否在范围内 |
[`api_is_point_in_range`](#api_is_point_in_range) | 点是否在范围内 |
[`api_set_life_cycle`](#api_set_life_cycle) | 设置单位生命周期 |
[`api_pause_life_cycle`](#api_pause_life_cycle) | 暂停单位生命周期 |
[`api_get_life_cycle`](#api_get_life_cycle) | 获取单位当前生命周期 |
[`api_get_total_life_cycle`](#api_get_total_life_cycle) | 获取单位总生命周期时长 |
[`api_set_attack_type`](#api_set_attack_type) | 设置单位攻击类型 |
[`api_get_atk_type`](#api_get_atk_type) | 获取单位攻击类型 |
[`api_is_attack_type`](#api_is_attack_type) | 攻击类型判断 |
[`api_set_armor_type`](#api_set_armor_type) | 设置单位护甲类型 |
[`api_get_armor_type`](#api_get_armor_type) | 获取单位护甲类型 |
[`api_is_armor_type`](#api_is_armor_type) | 护甲类型判断 |
[`api_get_x_scale`](#api_get_x_scale) | 获取单位的x轴缩放 |
[`api_get_y_scale`](#api_get_y_scale) | 获取单位的y轴缩放 |
[`api_get_z_scale`](#api_get_z_scale) | 获取单位的z轴缩放 |
[`api_get_attr_other`](#api_get_attr_other) | 获取 attr_other |
[`api_get_attr_base`](#api_get_attr_base) | 获取attr_base |
[`api_get_attr_base_ratio`](#api_get_attr_base_ratio) | 获取attr_base_ratio |
[`api_get_attr_bonus`](#api_get_attr_bonus) | 获取attr_bonus |
[`api_get_attr_bonus_ratio`](#api_get_attr_bonus_ratio) | 获取attr_bonus_ratio |
[`api_get_attr_all_ratio`](#api_get_attr_all_ratio) | 获取attr_all_ratio |
[`api_get_main_attr`](#api_get_main_attr) | 获取单位主属性 |
[`api_set_attr`](#api_set_attr) | 设置纯值类型的值 |
[`api_set_attr_by_attr_element`](#api_set_attr_by_attr_element) | 设置单位属性（根据属性分类） |
[`api_set_attr_base`](#api_set_attr_base) | 设置单位属性基础值部分 |
[`api_add_attr_by_attr_element`](#api_add_attr_by_attr_element) | 增加单位属性（根据属性分类） |
[`api_add_attr_base`](#api_add_attr_base) | 增加单位属性基础值 |
[`api_set_attr_bonus`](#api_set_attr_bonus) | 设置单位属性 attr_bonus |
[`api_add_attr_bonus`](#api_add_attr_bonus) | 增加单位属性 attr_bonus |
[`api_set_attr_bonus_ratio`](#api_set_attr_bonus_ratio) | 设置单位属性 attr_bouns_ratio |
[`api_add_attr_bonus_ratio`](#api_add_attr_bonus_ratio) | 增加单位属性 attr_bouns_ratio |
[`api_set_attr_all_ratio`](#api_set_attr_all_ratio) | 设置单位属性 基础值和额外值 加成比例 |
[`api_add_attr_all_ratio`](#api_add_attr_all_ratio) | 增加单位属性 基础值和额外值 加成比例 |
[`api_set_attr_base_ratio`](#api_set_attr_base_ratio) | 设置单位属性 基础值 加成比例 |
[`api_add_attr_base_ratio`](#api_add_attr_base_ratio) | 增加单位属性基础值百分比加成 |
[`api_set_level`](#api_set_level) | 设置单位等级 |
[`api_add_level`](#api_add_level) | 增加单位等级 |
[`api_get_float_attr`](#api_get_float_attr) | 获取单位实数属性 |
[`api_get_str_attr`](#api_get_str_attr) | 获取单位字符串属性 |
[`api_set_str_attr`](#api_set_str_attr) | 设置单位字符串属性 |
[`api_get_level`](#api_get_level) | 获取单位等级 |
[`api_get_hp`](#api_get_hp) | 获取单位血量 |
[`api_get_hpp`](#api_get_hpp) | 获取单位血量百分比 |
[`api_heal`](#api_heal) | 治疗单位 |
[`api_get_dmg_statistics`](#api_get_dmg_statistics) | 获取输出伤害统计值 |
[`api_clear_dmg_statistics`](#api_clear_dmg_statistics) | 清空输出伤害统计值 |
[`api_add_exp`](#api_add_exp) | 增加经验，增加值为正数 |
[`api_set_exp`](#api_set_exp) | 设置经验 |
[`api_get_exp`](#api_get_exp) | 获取单位当前经验, 如果达到了顶级，就返回-1 |
[`api_get_upgrade_exp`](#api_get_upgrade_exp) | 获取当前升级所需经验, 如果达到了顶级，就返回-1 |
[`api_add_tag`](#api_add_tag) | 单位移除键值对 |
[`api_remove_tag`](#api_remove_tag) | 单位移除键值对 |
[`api_set_recycle_on_remove`](#api_set_recycle_on_remove) | 设置单位删除时是否回收 |
[`api_set_name`](#api_set_name) | 设置单位名称 |
[`api_set_unit_day_vision`](#api_set_unit_day_vision) | 设置单位白天视野 |
[`api_get_unit_day_vision`](#api_get_unit_day_vision) | 获取单位白天视野 |
[`api_set_unit_night_vision`](#api_set_unit_night_vision) | 设置单位夜晚视野 |
[`api_get_unit_night_vision`](#api_get_unit_night_vision) | 获取单位夜晚视野 |
[`api_set_unit_alarm_range`](#api_set_unit_alarm_range) | 设置单位警戒范围 |
[`api_get_unit_alarm_range`](#api_get_unit_alarm_range) | 获取单位警戒范围 |
[`api_set_unit_cancel_alarm_range`](#api_set_unit_cancel_alarm_range) | 设置单位取消警戒范围 |
[`api_get_unit_cancel_alarm_range`](#api_get_unit_cancel_alarm_range) | 获取单位取消警戒范围 |
[`api_get_unit_bar_cnt`](#api_get_unit_bar_cnt) | 获取单位物品栏数量 |
[`api_get_unit_pkg_cnt`](#api_get_unit_pkg_cnt) | 获取单位背包栏数量 |
[`api_get_unit_collision_radius`](#api_get_unit_collision_radius) | 获取单位动态碰撞半径 |
[`api_get_unit_reward_exp`](#api_get_unit_reward_exp) | 获取单位被击杀经验 |
[`api_get_unit_reward_res`](#api_get_unit_reward_res) | 获取单位被击杀的玩家属性 |
[`api_set_unit_reward_exp`](#api_set_unit_reward_exp) | 设置单位被击杀经验 |
[`api_set_unit_reward_res`](#api_set_unit_reward_res) | 设置单位被击杀的玩家属性 |
[`api_get_unit_shield_value`](#api_get_unit_shield_value) | 获取单位的护盾值 |
[`api_set_unit_icon`](#api_set_unit_icon) | 设置单位的头像 |
[`api_stop_move`](#api_stop_move) | 单位停止移动 |
[`api_transmit`](#api_transmit) | 单位传送到指定坐标 |
[`api_force_transmit`](#api_force_transmit) | 单位强制传送到指定坐标 |
[`api_force_transmit_new`](#api_force_transmit_new) | 单位强制传送到指定坐标 |
[`api_set_face_dir`](#api_set_face_dir) | 单位设置朝向 |
[`api_set_face_angle`](#api_set_face_angle) | 单位设置朝向角度 |
[`api_can_teleport_to`](#api_can_teleport_to) | 单位是否能传送到目标点 |
[`api_find_nearest_valid_position`](#api_find_nearest_valid_position) | 获取单位在目标点附近的最近可通行点 |
[`api_get_position`](#api_get_position) | 获取单位位置 |
[`api_get_face_dir`](#api_get_face_dir) | 获取单位朝向 |
[`get_face_angle`](#get_face_angle) | 获取单位面向角度 |
[`api_set_turn_speed`](#api_set_turn_speed) | 设置单位转身速度 |
[`api_get_turn_speed`](#api_get_turn_speed) | 获得单位转身速度 |
[`api_is_moving`](#api_is_moving) | 单位是否在移动 |
[`api_set_move_collision`](#api_set_move_collision) | 设置单位是否计算某种碰撞类型 |
[`api_get_move_collision`](#api_get_move_collision) | 获取单位是否计算某种碰撞类型 |
[`api_play_animation`](#api_play_animation) | 播放动画 |
[`api_stop_animation`](#api_stop_animation) | 停止播放动画 |
[`api_stop_cur_animation`](#api_stop_cur_animation) | 停止当前正在播放的动画 |
[`api_set_animation_speed`](#api_set_animation_speed) | 设置动画速度 |
[`api_play_sfx`](#api_play_sfx) | 单位播放特效 |
[`api_unit_play_sfx_on_socket`](#api_unit_play_sfx_on_socket) | 在单位挂接点播放特效 |
[`api_play_sfx_with_return`](#api_play_sfx_with_return) | 在单位上播放特效并返回特效实体 |
[`api_change_animation`](#api_change_animation) | 单位替换播放动画 |
[`api_cancel_change_animation`](#api_cancel_change_animation) | 取消单位替换播放动画 |
[`api_clear_change_animation`](#api_clear_change_animation) | 取消单位所有替换播放动画 |
[`api_change_model`](#api_change_model) | 单位替换模型 |
[`api_cancel_change_model`](#api_cancel_change_model) | 取消单位替换模型 |
[`api_clear_change_model`](#api_clear_change_model) | 取消单位所有替换模型 |
[`api_replace_model`](#api_replace_model) | 单位替换模型 |
[`api_cancel_replace_model`](#api_cancel_replace_model) | 取消单位替换模型 |
[`api_show_health_bar_count_down`](#api_show_health_bar_count_down) | 显示血条倒计时 |
[`api_get_model`](#api_get_model) | 获取单位模型 |
[`api_get_source_model`](#api_get_source_model) | 获取单位原模型 |
[`api_show_text`](#api_show_text) | 显示单位头顶文本 |
[`api_set_title`](#api_set_title) | 更改单位称号 |
[`api_set_title_visible`](#api_set_title_visible) | 设置单位称号可见性 |
[`api_set_name_visible`](#api_set_name_visible) | 隐藏显示单位名称,对于无头顶UI的单位该API不生效,每次隐藏计⋯⋯ |
[`api_set_bar_name_visible`](#api_set_bar_name_visible) | 隐藏显示单位名称,对于无头顶UI的单位该API不生效,每次隐藏计⋯⋯ |
[`api_set_bar_name`](#api_set_bar_name) | 设置血条显示名字 |
[`set_bar_name_scale`](#set_bar_name_scale) | 设置血条显示名字缩放 |
[`api_set_bar_name_font_type`](#api_set_bar_name_font_type) | 设置血条显示名字字体 |
[`api_set_bar_name_font_size`](#api_set_bar_name_font_size) | 设置血条显示名字字体大小 |
[`api_set_bar_text_visible`](#api_set_bar_text_visible) | 隐藏显示单位头顶文本,每次隐藏计数+1,每次显示计数-1,计数归⋯⋯ |
[`api_set_bar_text_scale`](#api_set_bar_text_scale) | 设置头顶显示文字缩放 |
[`api_set_bar_text_type`](#api_set_bar_text_type) | 设置头顶显示文字类型 |
[`api_set_bar_text_font_type`](#api_set_bar_text_font_type) | 设置头顶显示文字字体 |
[`api_set_bar_text_font_size`](#api_set_bar_text_font_size) | 设置头顶显示文字字号 |
[`api_set_bar_name_show_type`](#api_set_bar_name_show_type) | 设置血条名称显示样式 |
[`api_set_hp_bar_visible`](#api_set_hp_bar_visible) | 隐藏显示单位血条,对于无头顶UI的单位该API不生效,每次隐藏计⋯⋯ |
[`api_set_hp_bar_show_type`](#api_set_hp_bar_show_type) | 设置单位血条显示样式,对于无头顶UI的单位该API不生效 |
[`api_set_hp_bar_type`](#api_set_hp_bar_type) | 设置单位血条样式,对于无头顶UI的单位该API不生效 |
[`api_add_ui_comp`](#api_add_ui_comp) | 绑定UI控件 |
[`api_change_title_font_size`](#api_change_title_font_size) | 修改单位称号字号 |
[`api_change_title_scale`](#api_change_title_scale) | 修改单位称号缩放 |
[`api_change_title_font_type`](#api_change_title_font_type) | 修改单位称号字体 |
[`api_change_title_type`](#api_change_title_type) | 修改单位称号样式 |
[`api_set_title_bg_opacity`](#api_set_title_bg_opacity) | 修改单位称号背景不透明度 |
[`api_set_title_bg_scale`](#api_set_title_bg_scale) | 修改单位称号背景缩放 |
[`api_set_blood_scale_visible`](#api_set_blood_scale_visible) | 修改单位血条刻度可见性 |
[`api_set_title_bar_pos_offset`](#api_set_title_bar_pos_offset) | 修改单位称号位置偏移 |
[`api_set_hp_bar_pos_offset`](#api_set_hp_bar_pos_offset) | 修改单位血条位置偏移 |
[`api_set_name_bar_pos_offset`](#api_set_name_bar_pos_offset) | 修改单位名称位置偏移 |
[`api_set_text_bar_pos_offset`](#api_set_text_bar_pos_offset) | 修改单位文本位置偏移 |
[`api_set_countdown_bar_pos_offset`](#api_set_countdown_bar_pos_offset) | 修改单位倒计时位置偏移 |
[`api_raise_height`](#api_raise_height) | 单位抬高 |
[`api_get_height`](#api_get_height) | 获取单位高度 |
[`api_set_scale`](#api_set_scale) | 设置单位缩放 |
[`api_get_scale`](#api_get_scale) | 获取单位缩放 |
[`api_get_model_scale`](#api_get_model_scale) | 获取单位模型缩放 |
[`api_set_blood_bar_type`](#api_set_blood_bar_type) | 修改单位血条样式 |
[`api_set_blood_bar_show_type`](#api_set_blood_bar_show_type) | 修改单位血条显示模式 |
[`api_start_ghost`](#api_start_ghost) | 开启残影 |
[`api_stop_ghost`](#api_stop_ghost) | 关闭残影 |
[`api_start_dissolve`](#api_start_dissolve) | 开始溶解效果 |
[`api_stop_dissolve`](#api_stop_dissolve) | 关闭溶解效果 |
[`api_set_ghost_color`](#api_set_ghost_color) | 设置残影颜色 |
[`api_set_ghost_time`](#api_set_ghost_time) | 设置残影时间 |
[`api_play_sound_by_unit_for_role_relation`](#api_play_sound_by_unit_for_role_relation) | 对单位所属玩家关系播放音乐 |
[`api_set_Xray_is_open`](#api_set_Xray_is_open) | 设置XRay是否开启 |
[`api_set_transparent_when_invisible`](#api_set_transparent_when_invisible) | 设置单位隐身被探测到时是否半透明 |
[`api_set_mini_map_icon`](#api_set_mini_map_icon) | 设置单位小地图头像 |
[`api_set_enemy_mini_map_icon`](#api_set_enemy_mini_map_icon) | 设置敌方单位小地图头像 |
[`api_add_modifier`](#api_add_modifier) | 单位添加指定编号的效果 |
[`api_get_modifier_stack_count`](#api_get_modifier_stack_count) | 获取单位身上指定编号的的效果层数 |
[`api_has_modifier`](#api_has_modifier) | 单位身上是否拥有指定编号的效果 |
[`api_has_modifier_with_tag`](#api_has_modifier_with_tag) | 单位身上是否拥有指定标签的效果 |
[`api_get_modifier`](#api_get_modifier) | 获取单位身上指定编号的第i个效果实例 |
[`api_get_modifier_count`](#api_get_modifier_count) | 获取单位身上指定编号的第i个效果的个数 |
[`api_remove_modifier_instance`](#api_remove_modifier_instance) | 移除目标单位身上的目标modifier实例 |
[`api_remove_modifier_type`](#api_remove_modifier_type) | 移除目标单位身上的目标modifier类型的所有实例 |
[`api_has_modifier_type`](#api_has_modifier_type) | 单位身上是否拥有指定类别的效果 |
[`api_delete_all_modifiers_by_effect_type`](#api_delete_all_modifiers_by_effect_type) | 删除单位指定影响类型的魔法效果 |
[`api_get_all_modifiers`](#api_get_all_modifiers) | 获取单位身上所有的魔法效果 |
[`api_add_ability`](#api_add_ability) | 单位添加技能 |
[`api_remove_ability_by_index`](#api_remove_ability_by_index) | 单位根据槽位移除技能 |
[`api_remove_abilities_in_type`](#api_remove_abilities_in_type) | 单位移除某种类型里所有是指定技能ID的技能 |
[`api_set_ability_level`](#api_set_ability_level) | 单位设置技能等级。 |
[`api_unit_learn_ability`](#api_unit_learn_ability) | 单位学习技能 |
[`api_get_ability_point`](#api_get_ability_point) | 获取英雄的技能点 |
[`api_set_ability_point`](#api_set_ability_point) | 设置英雄的技能点 |
[`api_add_ability_point`](#api_add_ability_point) | 增加英雄的技能点 |
[`api_get_ability`](#api_get_ability) | 通过技能槽位获取技能 |
[`api_get_ability_by_type`](#api_get_ability_by_type) | 通过技能类型加技能ID获取技能 |
[`api_get_abilities_by_type`](#api_get_abilities_by_type) | 获取某种类型的技能列表 |
[`api_check_has_ability_type`](#api_check_has_ability_type) | 是否有对应技能类型的技能 |
[`api_get_all_abilities_can_show`](#api_get_all_abilities_can_show) | 获取单位技能列表 |
[`api_switch_ability`](#api_switch_ability) | 交换技能 |
[`api_disable_ability`](#api_disable_ability) | 单位禁用技能。 |
[`api_enable_ability`](#api_enable_ability) | 单位解禁技能。 |
[`api_get_ability_str_attr_value`](#api_get_ability_str_attr_value) | 返回单位实体指定槽位技能的字符串属性值 |
[`api_get_ability_by_seq`](#api_get_ability_by_seq) | 根据技能序号获取技能对象 |
[`api_add_state`](#api_add_state) | 给单位施加状态 |
[`api_remove_state`](#api_remove_state) | 给单位去除状态 |
[`api_is_in_battle_state`](#api_is_in_battle_state) | 是否在战斗状态 |
[`api_has_state`](#api_has_state) | 单位是否处于某状态 |
[`api_release_ability_by_index`](#api_release_ability_by_index) | 单位施放技能 |
[`api_release_ability_at_position`](#api_release_ability_at_position) | 单位施放技能，具有释放目标地点 |
[`api_create_building_on_point`](#api_create_building_on_point) | 发布建造命令(目标点) |
[`api_create_building_on_position`](#api_create_building_on_position) | 发布建造命令(坐标) |
[`api_has_item`](#api_has_item) | 单位是否拥有物品 |
[`api_has_item_key`](#api_has_item_key) | 单位是否拥有特定编号物品 |
[`api_add_item`](#api_add_item) | 给单位添加物品名 |
[`api_delete_item`](#api_delete_item) | 给单位删除物品名 |
[`api_drop_item`](#api_drop_item) | 单位丢弃物品实体到场景中 |
[`api_remove_item`](#api_remove_item) | 单位删除物品实体 |
[`api_get_item_by_slot`](#api_get_item_by_slot) | 获取单位背包槽位的物品 |
[`api_shift_item`](#api_shift_item) | 移动物品 |
[`api_shift_item_new`](#api_shift_item_new) | 移动物品 |
[`api_get_all_item_pids`](#api_get_all_item_pids) | 单位身上所有物品 |
[`api_set_unit_bar_cnt`](#api_set_unit_bar_cnt) | 设置单位物品栏的格子数量 |
[`api_set_unit_pkg_cnt`](#api_set_unit_pkg_cnt) | 设置单位背包栏的格子数量 |
[`api_get_num_of_item_type`](#api_get_num_of_item_type) | 单位身上拥有指定类型的物品数量 |
[`api_is_shop`](#api_is_shop) | 单位是否商店 |
[`api_get_shop_range`](#api_get_shop_range) | 获取商店单位范围 |
[`api_add_shop_item`](#api_add_shop_item) | 添加物品商品到商店 |
[`api_get_shop_item_list`](#api_get_shop_item_list) | 获取商店某页签的商品列表 |
[`api_get_shop_item_cd`](#api_get_shop_item_cd) | 获取商店商品的恢复时间 |
[`api_get_shop_item_default_cd`](#api_get_shop_item_default_cd) | 获取商店商品的库存恢复间隔 |
[`api_get_shop_item_residual_cd`](#api_get_shop_item_residual_cd) | 获取商店商品的剩余恢复时间 |
[`api_get_shop_tab_cnt`](#api_get_shop_tab_cnt) | 获取商店页签数量 |
[`api_get_shop_tab_name`](#api_get_shop_tab_name) | 获取商店的页签名 |
[`api_get_shop_tab_item_type`](#api_get_shop_tab_item_type) | 获取商店指定页签第N个商品的类型 |
[`api_add_shop_unit`](#api_add_shop_unit) | 添加单位商品到商店 |
[`api_remove_shop_item`](#api_remove_shop_item) | 删除商店物品商品 |
[`api_remove_shop_unit`](#api_remove_shop_unit) | 删除商店单位商品 |
[`api_set_shop_item_stock`](#api_set_shop_item_stock) | 设置物品商品库存 |
[`api_set_shop_unit_stock`](#api_set_shop_unit_stock) | 设置单位商品库存 |
[`api_set_is_shop`](#api_set_is_shop) | 设置商店开关 |
[`api_buy_item_with_tab_name`](#api_buy_item_with_tab_name) | 单位购买物品 |
[`api_buy_unit_with_tab_name`](#api_buy_unit_with_tab_name) | 单位购买单位 |
[`api_sell_item`](#api_sell_item) | 单位出售物品 |
[`api_set_shop_target`](#api_set_shop_target) | 设置商店目标 |
[`api_get_shop_item_stock`](#api_get_shop_item_stock) | 获取单位商店物品商品库存 |
[`api_get_shop_unit_stock`](#api_get_shop_unit_stock) | 获取单位商店单位商品库存 |
[`api_get_shop_item_price`](#api_get_shop_item_price) | 获取单位商店单位商品售价 |
[`api_upgrade_tech`](#api_upgrade_tech) | 科技升级 |
[`api_get_tech_list`](#api_get_tech_list) | 获取科技列表 |
[`api_get_affect_techs`](#api_get_affect_techs) | 获取科技列表 |
[`api_check_tech_precondition`](#api_check_tech_precondition) | 获取科技是否满足前置条件 |
[`api_add_tech`](#api_add_tech) | 添加科技 |
[`api_remove_tech`](#api_remove_tech) | 删除科技 |
[`api_release_command`](#api_release_command) | 发布命令 |
[`api_set_default_switch_behavior`](#api_set_default_switch_behavior) | 设置单位默认跳转状态 |


-----
## 方法

### `api_get_id` <span id="api_get_id"></span>
##### **描述**
获取单位ID
##### **参数**
无

##### **返回值**
`UnitID` : 单位ID

### `api_get_key` <span id="api_get_key"></span>
##### **描述**
获取单位编号
##### **参数**
无

##### **返回值**
`UnitKey` : 单位编号

### `api_get_camp_id` <span id="api_get_camp_id"></span>
##### **描述**
获取单位所属阵营id
##### **参数**
无

##### **返回值**
`CampID` : 阵营ID

### `api_get_role_id` <span id="api_get_role_id"></span>
##### **描述**
获取单位所属玩家ID
##### **参数**
无

##### **返回值**
`RoleID` : 玩家ID

### `api_get_role` <span id="api_get_role"></span>
##### **描述**
获取单位所属玩家
##### **参数**
无

##### **返回值**
`Role` : 玩家

### `api_get_camp` <span id="api_get_camp"></span>
##### **描述**
获取单位所属阵营
##### **参数**
无

##### **返回值**
`Camp` : 阵营

### `api_get_type` <span id="api_get_type"></span>
##### **描述**
获取单位类型
##### **参数**
无

##### **返回值**
`UnitType` : 单位类型

### `api_get_name` <span id="api_get_name"></span>
##### **描述**
获取单位名称
##### **参数**
无

##### **返回值**
`Str` : 单位名称

### `add_timer` <span id="add_timer"></span>
##### **描述**
添加定时器
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`time` | 定时时长  | [`Fixed`](../etype#Fixed) | 
`callback` | 超时函数  | [`Function`](../etype#Function) | 

##### **返回值**
`UInt32` : 定时器ID

### `add_repeat_timer` <span id="add_repeat_timer"></span>
##### **描述**
添加周期定时器
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`time` | 定时时长  | [`Fixed`](../etype#Fixed) | 
`callback` | 超时函数  | [`Function`](../etype#Function) | 

##### **返回值**
`UInt32` : 定时器ID

### `cancel_timer` <span id="cancel_timer"></span>
##### **描述**
取消定时器
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`timer_id` | 定时器ID  | [`UInt32`](../etype#UInt32) | 

##### **返回值**
无

### `api_remove_kv` <span id="api_remove_kv"></span>
##### **描述**
单位移除键值对
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`k` | 键名  | [`Str`](../etype#Str) | 

##### **返回值**
无

### `api_is_alive` <span id="api_is_alive"></span>
##### **描述**
单位是否存活
##### **参数**
无

##### **返回值**
`Bool` : 单位是否存活

### `api_hide_head_bar` <span id="api_hide_head_bar"></span>
##### **描述**
隐藏头顶信息
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`show` | 是否隐藏头顶信息  | [`Bool`](../etype#Bool) | 

##### **返回值**
无

### `has_tag` <span id="has_tag"></span>
##### **描述**
单位是否拥有标签
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`tag` | 标签  | [`Str`](../etype#Str) | 

##### **返回值**
`Bool` : 单位是否拥有标签

### `api_revive` <span id="api_revive"></span>
##### **描述**
复活单位
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`position` | 复活位置  | [`Point`](../etype#Point) | None

##### **返回值**
无

### `api_is_destroyed` <span id="api_is_destroyed"></span>
##### **描述**
单位是否已销毁
##### **参数**
无

##### **返回值**
`Bool` : 单位是否已销毁

### `api_delete` <span id="api_delete"></span>
##### **描述**
删除单位
##### **参数**
无

##### **返回值**
无

### `api_kill` <span id="api_kill"></span>
##### **描述**
强制单位死亡
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`source_unit` | 杀手单位  | [`Unit`](../etype#Unit) | None

##### **返回值**
无

### `api_get_icon` <span id="api_get_icon"></span>
##### **描述**
获取单位图标路径
##### **参数**
无

##### **返回值**
`Str` : 单位图标路径

### `api_get_unit_pic` <span id="api_get_unit_pic"></span>
##### **描述**
获取单位图片路径
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`pic_type` | 图片类型  | [`Str`](../etype#Str) | 

##### **返回值**
`Str` : 单位图片路径

### `api_get_parent_unit` <span id="api_get_parent_unit"></span>
##### **描述**
获取单位的父单位
##### **参数**
无

##### **返回值**
`Unit` : 单位的父单位

### `api_set_hp_color` <span id="api_set_hp_color"></span>
##### **描述**
改变单位血条颜色
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`color` | 单位血条颜色值  | [`Str`](../etype#Str) | 

##### **返回值**
无

### `api_switch_atk_assist_record` <span id="api_switch_atk_assist_record"></span>
##### **描述**
开启/关闭伤害及助攻统计
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`enable` | 开启  | [`Bool`](../etype#Bool) | 

##### **返回值**
无

### `api_is_in_range` <span id="api_is_in_range"></span>
##### **描述**
单位/点是否在范围内
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`unit` | 单位  | [`Unit`](../etype#Unit) | 
`radius` | 范围  | [`Float`](../etype#Float) | 

##### **返回值**
`Bool` : 是否在范围内

### `api_is_point_in_range` <span id="api_is_point_in_range"></span>
##### **描述**
点是否在范围内
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`point` | 点  | [`Point`](../etype#Point) | 
`radius` | 范围  | [`Float`](../etype#Float) | 

##### **返回值**
`Bool` : 是否在范围内

### `api_set_life_cycle` <span id="api_set_life_cycle"></span>
##### **描述**
设置单位生命周期
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`life_time` | 生命周期  | [`Float`](../etype#Float) | 

##### **返回值**
无

### `api_pause_life_cycle` <span id="api_pause_life_cycle"></span>
##### **描述**
暂停单位生命周期
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`pause` | 是否暂停  | [`Bool`](../etype#Bool) | 

##### **返回值**
无

### `api_get_life_cycle` <span id="api_get_life_cycle"></span>
##### **描述**
获取单位当前生命周期
##### **参数**
无

##### **返回值**
`Fixed` : 生命周期

### `api_get_total_life_cycle` <span id="api_get_total_life_cycle"></span>
##### **描述**
获取单位总生命周期时长
##### **参数**
无

##### **返回值**
`Fixed` : 生命周期

### `api_set_attack_type` <span id="api_set_attack_type"></span>
##### **描述**
设置单位攻击类型
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`attack_type` | 攻击类型  | [`UInt32`](../etype#UInt32) | 

##### **返回值**
无

### `api_get_atk_type` <span id="api_get_atk_type"></span>
##### **描述**
获取单位攻击类型
##### **参数**
无

##### **返回值**
`UInt32` : 攻击类型

### `api_is_attack_type` <span id="api_is_attack_type"></span>
##### **描述**
攻击类型判断
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`attack_type` | 攻击类型  | [`UInt32`](../etype#UInt32) | 

##### **返回值**
`Bool` : 攻击类型判断

### `api_set_armor_type` <span id="api_set_armor_type"></span>
##### **描述**
设置单位护甲类型
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`armor_type` | 护甲类型  | [`UInt32`](../etype#UInt32) | 

##### **返回值**
无

### `api_get_armor_type` <span id="api_get_armor_type"></span>
##### **描述**
获取单位护甲类型
##### **参数**
无

##### **返回值**
`UInt32` : 护甲类型

### `api_is_armor_type` <span id="api_is_armor_type"></span>
##### **描述**
护甲类型判断
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`armor_type` | 护甲类型  | [`UInt32`](../etype#UInt32) | 

##### **返回值**
`Bool` : 护甲类型判断

### `api_get_x_scale` <span id="api_get_x_scale"></span>
##### **描述**
获取单位的x轴缩放
##### **参数**
无

##### **返回值**
`Float` : 缩放的值

### `api_get_y_scale` <span id="api_get_y_scale"></span>
##### **描述**
获取单位的y轴缩放
##### **参数**
无

##### **返回值**
`Float` : 缩放的值

### `api_get_z_scale` <span id="api_get_z_scale"></span>
##### **描述**
获取单位的z轴缩放
##### **参数**
无

##### **返回值**
`Float` : 缩放的值

### `api_get_attr_other` <span id="api_get_attr_other"></span>
##### **描述**
获取 attr_other
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`key` | 属性名  | [`Str`](../etype#Str) | 

##### **返回值**
`Fixed` : 属性值

### `api_get_attr_base` <span id="api_get_attr_base"></span>
##### **描述**
获取attr_base
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`key` | 属性名  | [`Str`](../etype#Str) | 

##### **返回值**
`Fixed` : 属性值

### `api_get_attr_base_ratio` <span id="api_get_attr_base_ratio"></span>
##### **描述**
获取attr_base_ratio
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`key` | 属性名  | [`Str`](../etype#Str) | 

##### **返回值**
`Fixed` : 属性值

### `api_get_attr_bonus` <span id="api_get_attr_bonus"></span>
##### **描述**
获取attr_bonus
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`key` | 属性名  | [`Str`](../etype#Str) | 

##### **返回值**
`Fixed` : 属性值

### `api_get_attr_bonus_ratio` <span id="api_get_attr_bonus_ratio"></span>
##### **描述**
获取attr_bonus_ratio
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`key` | 属性名  | [`Str`](../etype#Str) | 

##### **返回值**
`Fixed` : 属性值

### `api_get_attr_all_ratio` <span id="api_get_attr_all_ratio"></span>
##### **描述**
获取attr_all_ratio
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`key` | 属性名  | [`Str`](../etype#Str) | 

##### **返回值**
`Fixed` : 属性值

### `api_get_main_attr` <span id="api_get_main_attr"></span>
##### **描述**
获取单位主属性
##### **参数**
无

##### **返回值**
`Str` : 主属性

### `api_set_attr` <span id="api_set_attr"></span>
##### **描述**
设置纯值类型的值
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`key` | 属性名  | [`Str`](../etype#Str) | 
`val` | 值  | [`Fixed`](../etype#Fixed) | 

##### **返回值**
无

### `api_set_attr_by_attr_element` <span id="api_set_attr_by_attr_element"></span>
##### **描述**
设置单位属性（根据属性分类）
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`key` | 属性名  | [`Str`](../etype#Str) | 
`val` | 值  | [`Fixed`](../etype#Fixed) | 
`attr_element` | 属性分类  | [`Str`](../etype#Str) | 

##### **返回值**
无

### `api_set_attr_base` <span id="api_set_attr_base"></span>
##### **描述**
设置单位属性基础值部分
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`key` | 属性名  | [`Str`](../etype#Str) | 
`val` | 基础值  | [`Fixed`](../etype#Fixed) | 

##### **返回值**
无

### `api_add_attr_by_attr_element` <span id="api_add_attr_by_attr_element"></span>
##### **描述**
增加单位属性（根据属性分类）
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`key` | 属性名  | [`Str`](../etype#Str) | 
`val` | 值  | [`Fixed`](../etype#Fixed) | 
`attr_element` | 属性分类  | [`Str`](../etype#Str) | 

##### **返回值**
无

### `api_add_attr_base` <span id="api_add_attr_base"></span>
##### **描述**
增加单位属性基础值
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`key` | 属性名  | [`Str`](../etype#Str) | 
`delta` | 增加值  | [`Fixed`](../etype#Fixed) | 

##### **返回值**
无

### `api_set_attr_bonus` <span id="api_set_attr_bonus"></span>
##### **描述**
设置单位属性 attr_bonus
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`key` | 属性名  | [`Str`](../etype#Str) | 
`val` | 设置值  | [`Fixed`](../etype#Fixed) | 

##### **返回值**
无

### `api_add_attr_bonus` <span id="api_add_attr_bonus"></span>
##### **描述**
增加单位属性 attr_bonus
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`key` | 属性名  | [`Str`](../etype#Str) | 
`delta` | 增加值  | [`Fixed`](../etype#Fixed) | 

##### **返回值**
无

### `api_set_attr_bonus_ratio` <span id="api_set_attr_bonus_ratio"></span>
##### **描述**
设置单位属性 attr_bouns_ratio
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`key` | 属性名  | [`Str`](../etype#Str) | 
`val` | 设置值  | [`Fixed`](../etype#Fixed) | 

##### **返回值**
无

### `api_add_attr_bonus_ratio` <span id="api_add_attr_bonus_ratio"></span>
##### **描述**
增加单位属性 attr_bouns_ratio
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`key` | 属性名  | [`Str`](../etype#Str) | 
`delta` | 加成比例  | [`Fixed`](../etype#Fixed) | 

##### **返回值**
无

### `api_set_attr_all_ratio` <span id="api_set_attr_all_ratio"></span>
##### **描述**
设置单位属性 基础值和额外值 加成比例
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`key` | 属性名  | [`Str`](../etype#Str) | 
`val` | 设置值  | [`Fixed`](../etype#Fixed) | 

##### **返回值**
无

### `api_add_attr_all_ratio` <span id="api_add_attr_all_ratio"></span>
##### **描述**
增加单位属性 基础值和额外值 加成比例
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`key` | 属性名  | [`Str`](../etype#Str) | 
`delta` | 加成比例  | [`Fixed`](../etype#Fixed) | 

##### **返回值**
无

### `api_set_attr_base_ratio` <span id="api_set_attr_base_ratio"></span>
##### **描述**
设置单位属性 基础值 加成比例
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`key` | 属性名  | [`Str`](../etype#Str) | 
`val` | 设置值  | [`Fixed`](../etype#Fixed) | 

##### **返回值**
无

### `api_add_attr_base_ratio` <span id="api_add_attr_base_ratio"></span>
##### **描述**
增加单位属性基础值百分比加成
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`key` | 属性名  | [`Str`](../etype#Str) | 
`delta` | 加成比例  | [`Fixed`](../etype#Fixed) | 

##### **返回值**
无

### `api_set_level` <span id="api_set_level"></span>
##### **描述**
设置单位等级
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`level` | 等级  | [`Int32`](../etype#Int32) | 

##### **返回值**
无

### `api_add_level` <span id="api_add_level"></span>
##### **描述**
增加单位等级
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`level` | 等级  | [`Int32`](../etype#Int32) | 

##### **返回值**
无

### `api_get_float_attr` <span id="api_get_float_attr"></span>
##### **描述**
获取单位实数属性
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`attr` | 属性名  | [`Str`](../etype#Str) | 

##### **返回值**
`Fixed` : 实数属性值

### `api_get_str_attr` <span id="api_get_str_attr"></span>
##### **描述**
获取单位字符串属性
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`attr` | 属性名  | [`Str`](../etype#Str) | 

##### **返回值**
`Str` : 字符串属性值

### `api_set_str_attr` <span id="api_set_str_attr"></span>
##### **描述**
设置单位字符串属性
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`attr` | 属性名  | [`Str`](../etype#Str) | 
`value` | 字符串值  | [`Str`](../etype#Str) | 

##### **返回值**
无

### `api_get_level` <span id="api_get_level"></span>
##### **描述**
获取单位等级
##### **参数**
无

##### **返回值**
`UInt32` : 单位等级

### `api_get_hp` <span id="api_get_hp"></span>
##### **描述**
获取单位血量
##### **参数**
无

##### **返回值**
`Fixed` : 单位血量

### `api_get_hpp` <span id="api_get_hpp"></span>
##### **描述**
获取单位血量百分比
##### **参数**
无

##### **返回值**
`Fixed` : 单位血量百分比

### `api_heal` <span id="api_heal"></span>
##### **描述**
治疗单位
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`hp_change` | 治疗的数值  | [`Fixed`](../etype#Fixed) | 
`jump_word` | 是否跳字  | [`Bool`](../etype#Bool) | False
`related_ability` | 关联技能  | [`Ability`](../etype#Ability) | None
`source_unit` | 来源单位  | [`Unit`](../etype#Unit) | None
`harm_text_enum` | 跳字枚举  | [`Str`](../etype#Str) | 

##### **返回值**
无

### `api_get_dmg_statistics` <span id="api_get_dmg_statistics"></span>
##### **描述**
获取输出伤害统计值
##### **参数**
无

##### **返回值**
`Fixed` : 输出伤害统计值

### `api_clear_dmg_statistics` <span id="api_clear_dmg_statistics"></span>
##### **描述**
清空输出伤害统计值
##### **参数**
无

##### **返回值**
无

### `api_add_exp` <span id="api_add_exp"></span>
##### **描述**
增加经验，增加值为正数
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`exp` | 经验  | [`Fixed`](../etype#Fixed) | 

##### **返回值**
无

### `api_set_exp` <span id="api_set_exp"></span>
##### **描述**
设置经验
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`exp` | 经验  | [`Fixed`](../etype#Fixed) | 

##### **返回值**
无

### `api_get_exp` <span id="api_get_exp"></span>
##### **描述**
获取单位当前经验, 如果达到了顶级，就返回-1
##### **参数**
无

##### **返回值**
`UInt32` : 单位当前经验值

### `api_get_upgrade_exp` <span id="api_get_upgrade_exp"></span>
##### **描述**
获取当前升级所需经验, 如果达到了顶级，就返回-1
##### **参数**
无

##### **返回值**
`Fixed` : 当前升级所需经验值

### `api_add_tag` <span id="api_add_tag"></span>
##### **描述**
单位移除键值对
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`tag` | TAG  | [`Str`](../etype#Str) | 

##### **返回值**
无

### `api_remove_tag` <span id="api_remove_tag"></span>
##### **描述**
单位移除键值对
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`tag` | TAG  | [`Str`](../etype#Str) | 

##### **返回值**
无

### `api_set_recycle_on_remove` <span id="api_set_recycle_on_remove"></span>
##### **描述**
设置单位删除时是否回收
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`recycle` | 是否回收  | [`Bool`](../etype#Bool) | False

##### **返回值**
无

### `api_set_name` <span id="api_set_name"></span>
##### **描述**
设置单位名称
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`name` | 名称  | [`Str`](../etype#Str) | 

##### **返回值**
无

### `api_set_unit_day_vision` <span id="api_set_unit_day_vision"></span>
##### **描述**
设置单位白天视野
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`value` | 视野  | [`Float`](../etype#Float) | 

##### **返回值**
无

### `api_get_unit_day_vision` <span id="api_get_unit_day_vision"></span>
##### **描述**
获取单位白天视野
##### **参数**
无

##### **返回值**
`Fixed` : 白天视野

### `api_set_unit_night_vision` <span id="api_set_unit_night_vision"></span>
##### **描述**
设置单位夜晚视野
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`value` | 视野  | [`Float`](../etype#Float) | 

##### **返回值**
无

### `api_get_unit_night_vision` <span id="api_get_unit_night_vision"></span>
##### **描述**
获取单位夜晚视野
##### **参数**
无

##### **返回值**
`Fixed` : 夜晚视野

### `api_set_unit_alarm_range` <span id="api_set_unit_alarm_range"></span>
##### **描述**
设置单位警戒范围
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`value` | 警戒范围  | [`Float`](../etype#Float) | 

##### **返回值**
无

### `api_get_unit_alarm_range` <span id="api_get_unit_alarm_range"></span>
##### **描述**
获取单位警戒范围
##### **参数**
无

##### **返回值**
`Fixed` : 警戒范围

### `api_set_unit_cancel_alarm_range` <span id="api_set_unit_cancel_alarm_range"></span>
##### **描述**
设置单位取消警戒范围
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`value` | 取消警戒范围  | [`Float`](../etype#Float) | 

##### **返回值**
无

### `api_get_unit_cancel_alarm_range` <span id="api_get_unit_cancel_alarm_range"></span>
##### **描述**
获取单位取消警戒范围
##### **参数**
无

##### **返回值**
`Fixed` : 取消警戒范围

### `api_get_unit_bar_cnt` <span id="api_get_unit_bar_cnt"></span>
##### **描述**
获取单位物品栏数量
##### **参数**
无

##### **返回值**
`UInt64` : 数量

### `api_get_unit_pkg_cnt` <span id="api_get_unit_pkg_cnt"></span>
##### **描述**
获取单位背包栏数量
##### **参数**
无

##### **返回值**
`UInt64` : 数量

### `api_get_unit_collision_radius` <span id="api_get_unit_collision_radius"></span>
##### **描述**
获取单位动态碰撞半径
##### **参数**
无

##### **返回值**
`Fixed` : 动态碰撞半径

### `api_get_unit_reward_exp` <span id="api_get_unit_reward_exp"></span>
##### **描述**
获取单位被击杀经验
##### **参数**
无

##### **返回值**
`Int32` : 经验值

### `api_get_unit_reward_res` <span id="api_get_unit_reward_res"></span>
##### **描述**
获取单位被击杀的玩家属性
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`res_key` | 经验值  | [`Fixed`](../etype#Fixed) | 

##### **返回值**
无

### `api_set_unit_reward_exp` <span id="api_set_unit_reward_exp"></span>
##### **描述**
设置单位被击杀经验
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`res_value` | 经验值  | [`Fixed`](../etype#Fixed) | 

##### **返回值**
无

### `api_set_unit_reward_res` <span id="api_set_unit_reward_res"></span>
##### **描述**
设置单位被击杀的玩家属性
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`res_key` | 玩家属性资源  | [`RoleResKey`](../etype#RoleResKey) | 
`res_value` | 经验值  | [`Fixed`](../etype#Fixed) | 

##### **返回值**
无

### `api_get_unit_shield_value` <span id="api_get_unit_shield_value"></span>
##### **描述**
获取单位的护盾值
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`shield_type` | 护盾值  | [`Int32`](../etype#Int32) | 

##### **返回值**
无

### `api_set_unit_icon` <span id="api_set_unit_icon"></span>
##### **描述**
设置单位的头像
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`icon` | 图片  | [`Texture`](../etype#Texture) | 

##### **返回值**
无

### `api_stop_move` <span id="api_stop_move"></span>
##### **描述**
单位停止移动
##### **参数**
无

##### **返回值**
无

### `api_transmit` <span id="api_transmit"></span>
##### **描述**
单位传送到指定坐标
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`point` | 目标坐标  | [`FVector3`](../etype#FVector3) | 

##### **返回值**
无

### `api_force_transmit` <span id="api_force_transmit"></span>
##### **描述**
单位强制传送到指定坐标
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`pos` | 目标坐标  | [`FVector3`](../etype#FVector3) | 

##### **返回值**
无

### `api_force_transmit_new` <span id="api_force_transmit_new"></span>
##### **描述**
单位强制传送到指定坐标
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`pos` | 目标坐标  | [`FVector3`](../etype#FVector3) | 
`interpolation` | 是否平滑  | [`Bool`](../etype#Bool) | 

##### **返回值**
无

### `api_set_face_dir` <span id="api_set_face_dir"></span>
##### **描述**
单位设置朝向
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`face_dir` | 朝向  | [`FVector3`](../etype#FVector3) | 
`speed_effect` | 是否受转身速度影响  | [`Bool`](../etype#Bool) | False

##### **返回值**
无

### `api_set_face_angle` <span id="api_set_face_angle"></span>
##### **描述**
单位设置朝向角度
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`face_angle` | 朝向角度  | [`Fixed`](../etype#Fixed) | 
`turn_time_ms` | 转身时间毫秒  | [`Int32`](../etype#Int32) | -1

##### **返回值**
无

### `api_can_teleport_to` <span id="api_can_teleport_to"></span>
##### **描述**
单位是否能传送到目标点
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`pos` | 目标点  | [`FVector3`](../etype#FVector3) | 

##### **返回值**
`Bool` : 单位是否能传送到目标点

### `api_find_nearest_valid_position` <span id="api_find_nearest_valid_position"></span>
##### **描述**
获取单位在目标点附近的最近可通行点
##### **参数**
无

##### **返回值**
`FVector3` : 最近可通行点

### `api_get_position` <span id="api_get_position"></span>
##### **描述**
获取单位位置
##### **参数**
无

##### **返回值**
`FVector3` : 单位位置

### `api_get_face_dir` <span id="api_get_face_dir"></span>
##### **描述**
获取单位朝向
##### **参数**
无

##### **返回值**
`FVector3` : 单位朝向

### `get_face_angle` <span id="get_face_angle"></span>
##### **描述**
获取单位面向角度
##### **参数**
无

##### **返回值**
`Fixed` : 单位面向角度

### `api_set_turn_speed` <span id="api_set_turn_speed"></span>
##### **描述**
设置单位转身速度
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`turn_speed` | 转身速度  | [`Fixed`](../etype#Fixed) | 

##### **返回值**
无

### `api_get_turn_speed` <span id="api_get_turn_speed"></span>
##### **描述**
获得单位转身速度
##### **参数**
无

##### **返回值**
`Fixed` : 转身速度

### `api_is_moving` <span id="api_is_moving"></span>
##### **描述**
单位是否在移动
##### **参数**
无

##### **返回值**
`Bool` : 是否在移动

### `api_set_move_collision` <span id="api_set_move_collision"></span>
##### **描述**
设置单位是否计算某种碰撞类型
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`collision_layer` | 碰撞mask  | [`Int32`](../etype#Int32) | 
`enable` | 开启状态  | [`Bool`](../etype#Bool) | 

##### **返回值**
无

### `api_get_move_collision` <span id="api_get_move_collision"></span>
##### **描述**
获取单位是否计算某种碰撞类型
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`collision_layer` | 碰撞mask  | [`Int32`](../etype#Int32) | 

##### **返回值**
`Bool` : 是否开启

### `api_play_animation` <span id="api_play_animation"></span>
##### **描述**
播放动画
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`name` | 动画名称  | [`Str`](../etype#Str) | 
`rate` | 播放倍率  | [`Float`](../etype#Float) | 1
`init_time` | 开始时间(s)  | [`Float`](../etype#Float) | 0
`end_time` | 结束时间(s)，正数 -1 表示不结束  | [`Float`](../etype#Float) | -1
`loop` | 是否循环  | [`Bool`](../etype#Bool) | False
`return_idle` | 播放结束后是否恢复idle  | [`Bool`](../etype#Bool) | False

##### **返回值**
无

### `api_stop_animation` <span id="api_stop_animation"></span>
##### **描述**
停止播放动画
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`name` | 动画名称  | [`Str`](../etype#Str) | 

##### **返回值**
无

### `api_stop_cur_animation` <span id="api_stop_cur_animation"></span>
##### **描述**
停止当前正在播放的动画
##### **参数**
无

##### **返回值**
无

### `api_set_animation_speed` <span id="api_set_animation_speed"></span>
##### **描述**
设置动画速度
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`speed` | 速度  | [`Fixed`](../etype#Fixed) | 

##### **返回值**
无

### `api_play_sfx` <span id="api_play_sfx"></span>
##### **描述**
单位播放特效
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`socket_name` | 挂节点名字  | [`Str`](../etype#Str) | 
`sfx_res_id` | 特效编号  | [`SfxKey`](../etype#SfxKey) | 
`keep_time` | 持续时间，单位：秒  | [`Fixed`](../etype#Fixed) | 
`scale` | 缩放比例  | [`Float`](../etype#Float) | 1.0
`inherit_pos` | 是否跟随单位位置  | [`Bool`](../etype#Bool) | True
`inherit_rotate` | 是否跟随单位旋转  | [`Bool`](../etype#Bool) | True
`inherit_scale` | 是否跟随缩放  | [`Bool`](../etype#Bool) | True
`role` | 所属单位  | [`Role`](../etype#Role) | None
`visible_type` | 可见性规则  | [`SfxVisibleType`](../etype#SfxVisibleType) | 1
`rotation` | 初始旋转 角度制  | [`Float`](../etype#Float) | 0

##### **返回值**
无

### `api_unit_play_sfx_on_socket` <span id="api_unit_play_sfx_on_socket"></span>
##### **描述**
在单位挂接点播放特效
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`socket_name` | 挂节点名字  | [`Str`](../etype#Str) | 
`sfx_id` | 特效编号  | [`SfxKey`](../etype#SfxKey) | 
`keep_time` | 持续时间，单位：秒  | [`Fixed`](../etype#Fixed) | 
`scale` | 缩放比例  | [`Float`](../etype#Float) | 1.0
`inherit_rotate` | 是否跟随单位旋转  | [`Bool`](../etype#Bool) | True
`inherit_scale` | 是否跟随缩放  | [`Bool`](../etype#Bool) | True
`role` | 所属玩家  | [`Role`](../etype#Role) | None
`visible_type` | 可见性规则  | [`SfxVisibleType`](../etype#SfxVisibleType) | 1

##### **返回值**
无

### `api_play_sfx_with_return` <span id="api_play_sfx_with_return"></span>
##### **描述**
在单位上播放特效并返回特效实体
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`socket_name` | 挂节点名字  | [`Str`](../etype#Str) | 
`sfx_res_id` | 特效编号  | [`SfxKey`](../etype#SfxKey) | 
`keep_time` | 持续时间，单位：秒  | [`Fixed`](../etype#Fixed) | 
`scale` | 缩放比例  | [`Float`](../etype#Float) | 1.0
`inherit_pos` | 是否跟随单位位置  | [`Bool`](../etype#Bool) | True
`inherit_rotate` | 是否跟随单位旋转  | [`Bool`](../etype#Bool) | True
`inherit_scale` | 是否跟随缩放  | [`Bool`](../etype#Bool) | True
`role` | 所属单位  | [`Role`](../etype#Role) | None
`visible_type` | 可见性规则  | [`SfxVisibleType`](../etype#SfxVisibleType) | 1
`rotation` | 初始旋转 角度制  | [`Float`](../etype#Float) | 0.0

##### **返回值**
`Sfx` : 特效

### `api_change_animation` <span id="api_change_animation"></span>
##### **描述**
单位替换播放动画
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`target_ani` | 目标动画名字  | [`Str`](../etype#Str) | 
`source_ani` | 原动画名字  | [`Str`](../etype#Str) | 

##### **返回值**
无

### `api_cancel_change_animation` <span id="api_cancel_change_animation"></span>
##### **描述**
取消单位替换播放动画
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`target_ani` | 目标动画名字  | [`Str`](../etype#Str) | 
`source_ani` | 原动画名字  | [`Str`](../etype#Str) | 

##### **返回值**
无

### `api_clear_change_animation` <span id="api_clear_change_animation"></span>
##### **描述**
取消单位所有替换播放动画
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`source_ani` | 原动画名字  | [`Str`](../etype#Str) | 

##### **返回值**
无

### `api_change_model` <span id="api_change_model"></span>
##### **描述**
单位替换模型
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`target_model` | 目标模型编号  | [`ModelKey`](../etype#ModelKey) | 
`source_model` | 原模型编号  | [`ModelKey`](../etype#ModelKey) | 

##### **返回值**
无

### `api_cancel_change_model` <span id="api_cancel_change_model"></span>
##### **描述**
取消单位替换模型
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`target_model` | 目标模型编号  | [`ModelKey`](../etype#ModelKey) | 
`source_model` | 原模型编号  | [`ModelKey`](../etype#ModelKey) | 

##### **返回值**
无

### `api_clear_change_model` <span id="api_clear_change_model"></span>
##### **描述**
取消单位所有替换模型
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`source_model` | 原模型编号  | [`ModelKey`](../etype#ModelKey) | 

##### **返回值**
无

### `api_replace_model` <span id="api_replace_model"></span>
##### **描述**
单位替换模型
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`target_model` | 目标模型编号  | [`ModelKey`](../etype#ModelKey) | 

##### **返回值**
无

### `api_cancel_replace_model` <span id="api_cancel_replace_model"></span>
##### **描述**
取消单位替换模型
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`target_model` | 目标模型名字  | [`ModelKey`](../etype#ModelKey) | 

##### **返回值**
无

### `api_show_health_bar_count_down` <span id="api_show_health_bar_count_down"></span>
##### **描述**
显示血条倒计时
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`left_time` | 倒计时时长, 单位秒  | [`Fixed`](../etype#Fixed) | 

##### **返回值**
无

### `api_get_model` <span id="api_get_model"></span>
##### **描述**
获取单位模型
##### **参数**
无

##### **返回值**
`ModelKey` : 模型编号

### `api_get_source_model` <span id="api_get_source_model"></span>
##### **描述**
获取单位原模型
##### **参数**
无

##### **返回值**
`ModelKey` : 模型编号

### `api_show_text` <span id="api_show_text"></span>
##### **描述**
显示单位头顶文本
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`text` | 显示信息  | [`Str`](../etype#Str) | 
`second` | 持续时间, 单位秒  | [`Fixed`](../etype#Fixed) | 
`localize` | 多语言环境  | [`Int32`](../etype#Int32) | 0

##### **返回值**
无

### `api_set_title` <span id="api_set_title"></span>
##### **描述**
更改单位称号
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`title_str` | 称号  | [`Str`](../etype#Str) | 
`localize` | 多语言转化  | [`Bool`](../etype#Bool) | False

##### **返回值**
无

### `api_set_title_visible` <span id="api_set_title_visible"></span>
##### **描述**
设置单位称号可见性
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`visible` | 是否显示  | [`Bool`](../etype#Bool) | 

##### **返回值**
无

### `api_set_name_visible` <span id="api_set_name_visible"></span>
##### **描述**
隐藏显示单位名称,对于无头顶UI的单位该API不生效,每次隐藏计数+1,每次显示计数-1,计数归零显示单位名称
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`visible` | 是否显示  | [`Bool`](../etype#Bool) | 

##### **返回值**
无

### `api_set_bar_name_visible` <span id="api_set_bar_name_visible"></span>
##### **描述**
隐藏显示单位名称,对于无头顶UI的单位该API不生效,每次隐藏计数+1,每次显示计数-1,计数归零显示单位名称
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`visible` | 是否显示  | [`Bool`](../etype#Bool) | 

##### **返回值**
无

### `api_set_bar_name` <span id="api_set_bar_name"></span>
##### **描述**
设置血条显示名字
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`name` | 名字  | [`Str`](../etype#Str) | 

##### **返回值**
无

### `set_bar_name_scale` <span id="set_bar_name_scale"></span>
##### **描述**
设置血条显示名字缩放
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`scale` | 缩放  | [`Float`](../etype#Float) | 

##### **返回值**
无

### `api_set_bar_name_font_type` <span id="api_set_bar_name_font_type"></span>
##### **描述**
设置血条显示名字字体
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`font_name` | 字体名称  | [`Str`](../etype#Str) | 

##### **返回值**
无

### `api_set_bar_name_font_size` <span id="api_set_bar_name_font_size"></span>
##### **描述**
设置血条显示名字字体大小
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`size` | 字号  | [`UInt32`](../etype#UInt32) | 

##### **返回值**
无

### `api_set_bar_text_visible` <span id="api_set_bar_text_visible"></span>
##### **描述**
隐藏显示单位头顶文本,每次隐藏计数+1,每次显示计数-1,计数归零显示单位头顶文本
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`visible` | 是否显示  | [`Bool`](../etype#Bool) | 

##### **返回值**
无

### `api_set_bar_text_scale` <span id="api_set_bar_text_scale"></span>
##### **描述**
设置头顶显示文字缩放
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`scale` | 缩放  | [`Float`](../etype#Float) | 

##### **返回值**
无

### `api_set_bar_text_type` <span id="api_set_bar_text_type"></span>
##### **描述**
设置头顶显示文字类型
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`bar_text_type` | 类型  | [`UInt32`](../etype#UInt32) | 

##### **返回值**
无

### `api_set_bar_text_font_type` <span id="api_set_bar_text_font_type"></span>
##### **描述**
设置头顶显示文字字体
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`font_type` | 字体  | [`Str`](../etype#Str) | 

##### **返回值**
无

### `api_set_bar_text_font_size` <span id="api_set_bar_text_font_size"></span>
##### **描述**
设置头顶显示文字字号
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`font_size` | 字号  | [`UInt32`](../etype#UInt32) | 

##### **返回值**
无

### `api_set_bar_name_show_type` <span id="api_set_bar_name_show_type"></span>
##### **描述**
设置血条名称显示样式
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`t` | 样式,具体参见**HeadBarShowNameType**  | [`UInt32`](../etype#UInt32) | 

##### **返回值**
无

### `api_set_hp_bar_visible` <span id="api_set_hp_bar_visible"></span>
##### **描述**
隐藏显示单位血条,对于无头顶UI的单位该API不生效,每次隐藏计数+1,每次显示计数-1,计数归零显示单位血条
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`visible` | 是否显示  | [`Bool`](../etype#Bool) | 

##### **返回值**
无

### `api_set_hp_bar_show_type` <span id="api_set_hp_bar_show_type"></span>
##### **描述**
设置单位血条显示样式,对于无头顶UI的单位该API不生效
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`t` | 显示样式,具体参见**HeadBarShowType**  | [`UInt32`](../etype#UInt32) | 

##### **返回值**
无

### `api_set_hp_bar_type` <span id="api_set_hp_bar_type"></span>
##### **描述**
设置单位血条样式,对于无头顶UI的单位该API不生效
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`t` | 血条样式  | [`UInt32`](../etype#UInt32) | 

##### **返回值**
无

### `api_add_ui_comp` <span id="api_add_ui_comp"></span>
##### **描述**
绑定UI控件
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`ui_comp` | UI控件  | [`WorldUINode`](../etype#WorldUINode) | 
`socket_name` | 挂接点(需确认模型拥有该挂接点,挂接点可在模型属性中查看,具体挂接点类型参见**ModelSocket**)  | [`Str`](../etype#Str) | 

##### **返回值**
无

### `api_change_title_font_size` <span id="api_change_title_font_size"></span>
##### **描述**
修改单位称号字号
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`font_size` | 字号  | [`UInt32`](../etype#UInt32) | 

##### **返回值**
无

### `api_change_title_scale` <span id="api_change_title_scale"></span>
##### **描述**
修改单位称号缩放
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`scale` | 缩放比例  | [`Float`](../etype#Float) | 

##### **返回值**
无

### `api_change_title_font_type` <span id="api_change_title_font_type"></span>
##### **描述**
修改单位称号字体
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`font_name` | 字体  | [`Str`](../etype#Str) | 

##### **返回值**
无

### `api_change_title_type` <span id="api_change_title_type"></span>
##### **描述**
修改单位称号样式
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`style_type` | 称号样式  | [`UInt32`](../etype#UInt32) | 

##### **返回值**
无

### `api_set_title_bg_opacity` <span id="api_set_title_bg_opacity"></span>
##### **描述**
修改单位称号背景不透明度
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`opacity` | 不透明度  | [`Float`](../etype#Float) | 

##### **返回值**
无

### `api_set_title_bg_scale` <span id="api_set_title_bg_scale"></span>
##### **描述**
修改单位称号背景缩放
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`scale` | 缩放  | [`Float`](../etype#Float) | 

##### **返回值**
无

### `api_set_blood_scale_visible` <span id="api_set_blood_scale_visible"></span>
##### **描述**
修改单位血条刻度可见性
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`visible` | 可见性  | [`Bool`](../etype#Bool) | 

##### **返回值**
无

### `api_set_title_bar_pos_offset` <span id="api_set_title_bar_pos_offset"></span>
##### **描述**
修改单位称号位置偏移
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`offset` | 位置偏移  | [`Vector2`](../etype#Vector2) | 

##### **返回值**
无

### `api_set_hp_bar_pos_offset` <span id="api_set_hp_bar_pos_offset"></span>
##### **描述**
修改单位血条位置偏移
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`offset` | 位置偏移  | [`Vector2`](../etype#Vector2) | 

##### **返回值**
无

### `api_set_name_bar_pos_offset` <span id="api_set_name_bar_pos_offset"></span>
##### **描述**
修改单位名称位置偏移
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`offset` | 位置偏移  | [`Vector2`](../etype#Vector2) | 

##### **返回值**
无

### `api_set_text_bar_pos_offset` <span id="api_set_text_bar_pos_offset"></span>
##### **描述**
修改单位文本位置偏移
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`offset` | 位置偏移  | [`Vector2`](../etype#Vector2) | 

##### **返回值**
无

### `api_set_countdown_bar_pos_offset` <span id="api_set_countdown_bar_pos_offset"></span>
##### **描述**
修改单位倒计时位置偏移
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`offset` | 位置偏移  | [`Vector2`](../etype#Vector2) | 

##### **返回值**
无

### `api_raise_height` <span id="api_raise_height"></span>
##### **描述**
单位抬高
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`y` | 抬高高度  | [`Fixed`](../etype#Fixed) | 
`dt` | 时间  | [`Fixed`](../etype#Fixed) | 

##### **返回值**
无

### `api_get_height` <span id="api_get_height"></span>
##### **描述**
获取单位高度
##### **参数**
无

##### **返回值**
`Fixed` : 模型高度

### `api_set_scale` <span id="api_set_scale"></span>
##### **描述**
设置单位缩放
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`scale` | 缩放  | [`Float`](../etype#Float) | 

##### **返回值**
无

### `api_get_scale` <span id="api_get_scale"></span>
##### **描述**
获取单位缩放
##### **参数**
无

##### **返回值**
`Fixed` : 获取缩放

### `api_get_model_scale` <span id="api_get_model_scale"></span>
##### **描述**
获取单位模型缩放
##### **参数**
无

##### **返回值**
`Fixed` : 获取缩放

### `api_set_blood_bar_type` <span id="api_set_blood_bar_type"></span>
##### **描述**
修改单位血条样式
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`blood_bar_type` | 血条样式  | [`UInt64`](../etype#UInt64) | 

##### **返回值**
无

### `api_set_blood_bar_show_type` <span id="api_set_blood_bar_show_type"></span>
##### **描述**
修改单位血条显示模式
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`blood_bar_show_type` | 血条显示模式  | [`UInt64`](../etype#UInt64) | 

##### **返回值**
无

### `api_start_ghost` <span id="api_start_ghost"></span>
##### **描述**
开启残影
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`r` | r  | [`Fixed`](../etype#Fixed) | Fix32(255.0)
`g` | g  | [`Fixed`](../etype#Fixed) | Fix32(255.0)
`b` | b  | [`Fixed`](../etype#Fixed) | Fix32(255.0)
`a` | a  | [`Fixed`](../etype#Fixed) | Fix32(255.0)
`interval` | interval  | [`Fixed`](../etype#Fixed) | Fix32(0.3)
`duration` | duration  | [`Fixed`](../etype#Fixed) | Fix32(0.5)
`start` | start  | [`Fixed`](../etype#Fixed) | Fix32(0.4)
`end` | end  | [`Fixed`](../etype#Fixed) | Fix32(0.3)
`use_raw_texture` | Use origin texture  | [`Bool`](../etype#Bool) | False

##### **返回值**
无

### `api_stop_ghost` <span id="api_stop_ghost"></span>
##### **描述**
关闭残影
##### **参数**
无

##### **返回值**
无

### `api_start_dissolve` <span id="api_start_dissolve"></span>
##### **描述**
开始溶解效果
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`dissolve_time` | 溶解时间  | [`Fixed`](../etype#Fixed) | 
`sink_dis` | 下沉距离  | [`Fixed`](../etype#Fixed) | 

##### **返回值**
无

### `api_stop_dissolve` <span id="api_stop_dissolve"></span>
##### **描述**
关闭溶解效果
##### **参数**
无

##### **返回值**
无

### `api_set_ghost_color` <span id="api_set_ghost_color"></span>
##### **描述**
设置残影颜色
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`r` | r  | [`Fixed`](../etype#Fixed) | 
`g` | g  | [`Fixed`](../etype#Fixed) | 
`b` | b  | [`Fixed`](../etype#Fixed) | 
`a` | a  | [`Fixed`](../etype#Fixed) | 

##### **返回值**
无

### `api_set_ghost_time` <span id="api_set_ghost_time"></span>
##### **描述**
设置残影时间
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`interval` | interval  | [`Fixed`](../etype#Fixed) | 
`duration` | duration  | [`Fixed`](../etype#Fixed) | 
`start` | start  | [`Fixed`](../etype#Fixed) | 
`end` | end  | [`Fixed`](../etype#Fixed) | 

##### **返回值**
无

### `api_play_sound_by_unit_for_role_relation` <span id="api_play_sound_by_unit_for_role_relation"></span>
##### **描述**
对单位所属玩家关系播放音乐
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`camp_target` | 玩家关系  | [`RoleRelation`](../etype#RoleRelation) | 
`sid` | 乐曲编号  | [`AudioKey`](../etype#AudioKey) | 
`loop` | 是否循环  | [`Bool`](../etype#Bool) | 

##### **返回值**
无

### `api_set_Xray_is_open` <span id="api_set_Xray_is_open"></span>
##### **描述**
设置XRay是否开启
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`value` | 布尔值  | [`Bool`](../etype#Bool) | 

##### **返回值**
无

### `api_set_transparent_when_invisible` <span id="api_set_transparent_when_invisible"></span>
##### **描述**
设置单位隐身被探测到时是否半透明
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`value` | 布尔值  | [`Bool`](../etype#Bool) | 

##### **返回值**
无

### `api_set_mini_map_icon` <span id="api_set_mini_map_icon"></span>
##### **描述**
设置单位小地图头像
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`icon` | 图片  | [`Texture`](../etype#Texture) | 

##### **返回值**
无

### `api_set_enemy_mini_map_icon` <span id="api_set_enemy_mini_map_icon"></span>
##### **描述**
设置敌方单位小地图头像
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`icon` | 图片  | [`Texture`](../etype#Texture) | 

##### **返回值**
无

### `api_add_modifier` <span id="api_add_modifier"></span>
##### **描述**
单位添加指定编号的效果
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`modifier_key` | 效果编号  | [`ModifierKey`](../etype#ModifierKey) | 
`from_unit` | 来源单位对象  | [`Unit`](../etype#Unit) | None
`from_ability` | 关联技能  | [`Ability`](../etype#Ability) | None
`time` | 持续时间  | [`Fixed`](../etype#Fixed) | Fix32(-1.0)
`cycle_time` | 循环周期  | [`Fixed`](../etype#Fixed) | Fix32(0.0)
`stack_count` | 效果层数  | [`Int32`](../etype#Int32) | 1

##### **返回值**
无

### `api_get_modifier_stack_count` <span id="api_get_modifier_stack_count"></span>
##### **描述**
获取单位身上指定编号的的效果层数
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`modifier_key` | 效果编号  | [`ModifierKey`](../etype#ModifierKey) | 

##### **返回值**
`Int32` : 效果层数

### `api_has_modifier` <span id="api_has_modifier"></span>
##### **描述**
单位身上是否拥有指定编号的效果
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`modifier_key` | 效果编号  | [`ModifierKey`](../etype#ModifierKey) | 

##### **返回值**
`Bool` : 单位身上是否有指定编号的效果

### `api_has_modifier_with_tag` <span id="api_has_modifier_with_tag"></span>
##### **描述**
单位身上是否拥有指定标签的效果
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`tag` | 标签  | [`Str`](../etype#Str) | 

##### **返回值**
`Bool` : 单位身上是否拥有指定标签的效果

### `api_get_modifier` <span id="api_get_modifier"></span>
##### **描述**
获取单位身上指定编号的第i个效果实例
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`add_index` | 效果位置  | [`Int32`](../etype#Int32) | 
`modifier_key` | 效果编号  | [`ModifierKey`](../etype#ModifierKey) | 

##### **返回值**
无

### `api_get_modifier_count` <span id="api_get_modifier_count"></span>
##### **描述**
获取单位身上指定编号的第i个效果的个数
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`modifier_key` | 效果编号  | [`ModifierKey`](../etype#ModifierKey) | 

##### **返回值**
无

### `api_remove_modifier_instance` <span id="api_remove_modifier_instance"></span>
##### **描述**
移除目标单位身上的目标modifier实例
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`tar_modifier` | 效果编号  | [`ModifierEntity`](../etype#ModifierEntity) | 

##### **返回值**
无

### `api_remove_modifier_type` <span id="api_remove_modifier_type"></span>
##### **描述**
移除目标单位身上的目标modifier类型的所有实例
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`modifier_key` | 效果编号  | [`ModifierKey`](../etype#ModifierKey) | 

##### **返回值**
无

### `api_has_modifier_type` <span id="api_has_modifier_type"></span>
##### **描述**
单位身上是否拥有指定类别的效果
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`modifier_effect_type` | 魔法效果类型  | [`ModifierEffectType`](../etype#ModifierEffectType) | 

##### **返回值**
`Bool` : 单位身上是否拥有指定类型的魔法效果

### `api_delete_all_modifiers_by_effect_type` <span id="api_delete_all_modifiers_by_effect_type"></span>
##### **描述**
删除单位指定影响类型的魔法效果
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`effect_type` | 效果影响类型  | [`ModifierEffectType`](../etype#ModifierEffectType) | 

##### **返回值**
无

### `api_get_all_modifiers` <span id="api_get_all_modifiers"></span>
##### **描述**
获取单位身上所有的魔法效果
##### **参数**
无

##### **返回值**
`ModifierEntity` : 魔法效果

### `api_add_ability` <span id="api_add_ability"></span>
##### **描述**
单位添加技能
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`ability_type` | 技能类型  | [`AbilityType`](../etype#AbilityType) | 
`ability_id` | 技能编号  | [`AbilityKey`](../etype#AbilityKey) | 
`ability_index` | 技能槽位编号  | [`AbilityIndex`](../etype#AbilityIndex) | -1
`ability_level` | 技能等级  | [`Int32`](../etype#Int32) | 1

##### **返回值**
`Ability` : 技能

### `api_remove_ability_by_index` <span id="api_remove_ability_by_index"></span>
##### **描述**
单位根据槽位移除技能
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`ability_type` | 技能类型  | [`Int32`](../etype#Int32) | 
`ability_index` | 技能槽位  | [`Int32`](../etype#Int32) | 

##### **返回值**
无

### `api_remove_abilities_in_type` <span id="api_remove_abilities_in_type"></span>
##### **描述**
单位移除某种类型里所有是指定技能ID的技能
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`ability_type` | 技能类型  | [`Int32`](../etype#Int32) | 
`ability_id` | 技能ID  | [`AbilityKey`](../etype#AbilityKey) | 

##### **返回值**
无

### `api_set_ability_level` <span id="api_set_ability_level"></span>
##### **描述**
单位设置技能等级。
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`modify` | 修改方式  | [`Int32`](../etype#Int32) | 
`ability_type` | 技能类型  | [`AbilityType`](../etype#AbilityType) | 
`ability_index` | 技能槽位  | [`AbilityIndex`](../etype#AbilityIndex) | 
`level` | 技能等级  | [`Int32`](../etype#Int32) | 

##### **返回值**
无

### `api_unit_learn_ability` <span id="api_unit_learn_ability"></span>
##### **描述**
单位学习技能
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`ability_key` | 技能类型  | [`AbilityKey`](../etype#AbilityKey) | 

##### **返回值**
无

### `api_get_ability_point` <span id="api_get_ability_point"></span>
##### **描述**
获取英雄的技能点
##### **参数**
无

##### **返回值**
`Int32` : 技能点

### `api_set_ability_point` <span id="api_set_ability_point"></span>
##### **描述**
设置英雄的技能点
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`ability_point` | 技能点  | [`Int32`](../etype#Int32) | 

##### **返回值**
无

### `api_add_ability_point` <span id="api_add_ability_point"></span>
##### **描述**
增加英雄的技能点
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`value` | 技能点  | [`Int32`](../etype#Int32) | 

##### **返回值**
无

### `api_get_ability` <span id="api_get_ability"></span>
##### **描述**
通过技能槽位获取技能
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`ability_type` | 技能类型  | [`AbilityType`](../etype#AbilityType) | 
`ability_index` | 技能槽位  | [`AbilityIndex`](../etype#AbilityIndex) | 

##### **返回值**
`Ability` : 技能对象

### `api_get_ability_by_type` <span id="api_get_ability_by_type"></span>
##### **描述**
通过技能类型加技能ID获取技能
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`ability_type` | 技能类型  | [`AbilityType`](../etype#AbilityType) | 
`ability_id` | 技能编号  | [`AbilityKey`](../etype#AbilityKey) | 

##### **返回值**
`Ability` : 技能对象

### `api_get_abilities_by_type` <span id="api_get_abilities_by_type"></span>
##### **描述**
获取某种类型的技能列表
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`ability_type` | 技能类型  | [`AbilityType`](../etype#AbilityType) | 

##### **返回值**
`Ability` : 技能对象

### `api_check_has_ability_type` <span id="api_check_has_ability_type"></span>
##### **描述**
是否有对应技能类型的技能
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`ability_id` | 技能类型  | [`AbilityKey`](../etype#AbilityKey) | 

##### **返回值**
`Bool` : 是否有对应技能类型的技能

### `api_get_all_abilities_can_show` <span id="api_get_all_abilities_can_show"></span>
##### **描述**
获取单位技能列表
##### **参数**
无

##### **返回值**
`Ability` : 技能对象

### `api_switch_ability` <span id="api_switch_ability"></span>
##### **描述**
交换技能
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`ability_1` | 技能  | [`Ability`](../etype#Ability) | 
`ability_2` | 技能  | [`Ability`](../etype#Ability) | 

##### **返回值**
无

### `api_disable_ability` <span id="api_disable_ability"></span>
##### **描述**
单位禁用技能。
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`ability_type` | 技能类型  | [`AbilityType`](../etype#AbilityType) | 
`ability_index` | 技能槽位  | [`AbilityIndex`](../etype#AbilityIndex) | 

##### **返回值**
无

### `api_enable_ability` <span id="api_enable_ability"></span>
##### **描述**
单位解禁技能。
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`ability_type` | 技能类型  | [`AbilityType`](../etype#AbilityType) | 
`ability_index` | 技能槽位  | [`AbilityIndex`](../etype#AbilityIndex) | 

##### **返回值**
无

### `api_get_ability_str_attr_value` <span id="api_get_ability_str_attr_value"></span>
##### **描述**
返回单位实体指定槽位技能的字符串属性值
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`ability_type` | 技能类型  | [`AbilityType`](../etype#AbilityType) | 
`ability_index` | 技能槽位  | [`AbilityIndex`](../etype#AbilityIndex) | 
`prop` | 属性名  | [`Str`](../etype#Str) | 

##### **返回值**
`Str` : 字符

### `api_get_ability_by_seq` <span id="api_get_ability_by_seq"></span>
##### **描述**
根据技能序号获取技能对象
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`seq` | 技能序号  | [`AbilitySeq`](../etype#AbilitySeq) | 

##### **返回值**
`Ability` : 技能对象

### `api_add_state` <span id="api_add_state"></span>
##### **描述**
给单位施加状态
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`state_id` | 状态ID  | [`UInt32`](../etype#UInt32) | 

##### **返回值**
无

### `api_remove_state` <span id="api_remove_state"></span>
##### **描述**
给单位去除状态
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`state_id` | 状态ID  | [`UInt32`](../etype#UInt32) | 

##### **返回值**
无

### `api_is_in_battle_state` <span id="api_is_in_battle_state"></span>
##### **描述**
是否在战斗状态
##### **参数**
无

##### **返回值**
`Bool` : 是否在战斗状态

### `api_has_state` <span id="api_has_state"></span>
##### **描述**
单位是否处于某状态
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`state_bit` | 状态  | [`Int32`](../etype#Int32) | 

##### **返回值**
`Bool` : 单位是否处于某状态

### `api_release_ability_by_index` <span id="api_release_ability_by_index"></span>
##### **描述**
单位施放技能
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`ability_type` | 技能类型  | [`Int32`](../etype#Int32) | 
`ability_index` | 技能槽位  | [`Int32`](../etype#Int32) | 

##### **返回值**
无

### `api_release_ability_at_position` <span id="api_release_ability_at_position"></span>
##### **描述**
单位施放技能，具有释放目标地点
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`ability_type` | 技能类型  | [`Int32`](../etype#Int32) | 
`ability_index` | 技能坑位  | [`Int32`](../etype#Int32) | 
`postion` | 技能目标位置  | [`Point`](../etype#Point) | 

##### **返回值**
无

### `api_create_building_on_point` <span id="api_create_building_on_point"></span>
##### **描述**
发布建造命令(目标点)
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`build_key` | 建筑类型  | [`UnitKey`](../etype#UnitKey) | 
`point` | 目标位置  | [`Point`](../etype#Point) | 

##### **返回值**
无

### `api_create_building_on_position` <span id="api_create_building_on_position"></span>
##### **描述**
发布建造命令(坐标)
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`build_key` | 建筑类型  | [`UnitKey`](../etype#UnitKey) | 
`pos_x` | 坐标X  | [`Fixed`](../etype#Fixed) | 
`pos_z` | 坐标Z  | [`Fixed`](../etype#Fixed) | 

##### **返回值**
无

### `api_has_item` <span id="api_has_item"></span>
##### **描述**
单位是否拥有物品
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`item` | 物品  | [`Item`](../etype#Item) | 

##### **返回值**
`Bool` : 单位是否拥有物品

### `api_has_item_key` <span id="api_has_item_key"></span>
##### **描述**
单位是否拥有特定编号物品
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`item_no` | 物品编号  | [`ItemKey`](../etype#ItemKey) | 

##### **返回值**
`Bool` : 单位是否拥有特定编号物品

### `api_add_item` <span id="api_add_item"></span>
##### **描述**
给单位添加物品名
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`item_no` | 物品编号  | [`ItemKey`](../etype#ItemKey) | 

##### **返回值**
`Item` : 创建的物品实体

### `api_delete_item` <span id="api_delete_item"></span>
##### **描述**
给单位删除物品名
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`item_key` | 物品编号  | [`ItemKey`](../etype#ItemKey) | 
`num` | 数量  | [`Int32`](../etype#Int32) | 1

##### **返回值**
无

### `api_drop_item` <span id="api_drop_item"></span>
##### **描述**
单位丢弃物品实体到场景中
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`item` | 物品  | [`Item`](../etype#Item) | 
`pos` | 点  | [`FPoint`](../etype#FPoint) | 
`stack_cnt` | 数量  | [`Int32`](../etype#Int32) | 

##### **返回值**
无

### `api_remove_item` <span id="api_remove_item"></span>
##### **描述**
单位删除物品实体
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`stack_cnt` | 数量  | [`Int32`](../etype#Int32) | 
`item` | 物品  | [`Item`](../etype#Item) | 

##### **返回值**
无

### `api_get_item_by_slot` <span id="api_get_item_by_slot"></span>
##### **描述**
获取单位背包槽位的物品
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`slot_type` | 背包槽位  | [`SlotType`](../etype#SlotType) | 
`slot_idx` | 格子下标  | [`Int32`](../etype#Int32) | 

##### **返回值**
`Item` : 物品对象

### `api_shift_item` <span id="api_shift_item"></span>
##### **描述**
移动物品
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`item` | 物品  | [`Item`](../etype#Item) | 
`slot_type` | 背包槽位  | [`SlotType`](../etype#SlotType) | 
`slot_idx` | 格子下标  | [`UInt32`](../etype#UInt32) | 

##### **返回值**
无

### `api_shift_item_new` <span id="api_shift_item_new"></span>
##### **描述**
移动物品
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`item` | 物品  | [`Item`](../etype#Item) | 
`slot_type` | 背包槽位  | [`SlotType`](../etype#SlotType) | 
`slot_idx` | 格子下标  | [`UInt32`](../etype#UInt32) | -1
`is_force_shift` | 格子被占是否转移  | [`Bool`](../etype#Bool) | True

##### **返回值**
无

### `api_get_all_item_pids` <span id="api_get_all_item_pids"></span>
##### **描述**
单位身上所有物品
##### **参数**
无

##### **返回值**
`ItemGroup` : 物品组

### `api_set_unit_bar_cnt` <span id="api_set_unit_bar_cnt"></span>
##### **描述**
设置单位物品栏的格子数量
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`cnt` | 个数  | [`UInt64`](../etype#UInt64) | 

##### **返回值**
无

### `api_set_unit_pkg_cnt` <span id="api_set_unit_pkg_cnt"></span>
##### **描述**
设置单位背包栏的格子数量
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`cnt` | 个数  | [`UInt64`](../etype#UInt64) | 

##### **返回值**
无

### `api_get_num_of_item_type` <span id="api_get_num_of_item_type"></span>
##### **描述**
单位身上拥有指定类型的物品数量
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`item_type` | 物品编号  | [`ItemKey`](../etype#ItemKey) | 

##### **返回值**
`UInt64` : 数量

### `api_is_shop` <span id="api_is_shop"></span>
##### **描述**
单位是否商店
##### **参数**
无

##### **返回值**
`Bool` : 单位是否商店

### `api_get_shop_range` <span id="api_get_shop_range"></span>
##### **描述**
获取商店单位范围
##### **参数**
无

##### **返回值**
`Fixed` : 商店范围

### `api_add_shop_item` <span id="api_add_shop_item"></span>
##### **描述**
添加物品商品到商店
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`tab_name` | 页签  | [`TabName`](../etype#TabName) | 
`item_no` | 道具编号  | [`ItemKey`](../etype#ItemKey) | 

##### **返回值**
无

### `api_get_shop_item_list` <span id="api_get_shop_item_list"></span>
##### **描述**
获取商店某页签的商品列表
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`tab_idx` | 页签id  | [`TabIdx`](../etype#TabIdx) | 

##### **返回值**
`ItemKey` : 道具编号

### `api_get_shop_item_cd` <span id="api_get_shop_item_cd"></span>
##### **描述**
获取商店商品的恢复时间
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`tab_idx` | 页签id  | [`TabIdx`](../etype#TabIdx) | 
`item_no` | 道具编号  | [`ItemKey`](../etype#ItemKey) | 

##### **返回值**
无

### `api_get_shop_item_default_cd` <span id="api_get_shop_item_default_cd"></span>
##### **描述**
获取商店商品的库存恢复间隔
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`tab_idx` | 页签id  | [`TabIdx`](../etype#TabIdx) | 
`item_num` | 第N个道具  | [`Int32`](../etype#Int32) | 

##### **返回值**
无

### `api_get_shop_item_residual_cd` <span id="api_get_shop_item_residual_cd"></span>
##### **描述**
获取商店商品的剩余恢复时间
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`tab_idx` | 页签id  | [`TabIdx`](../etype#TabIdx) | 
`item_num` | 第N个道具  | [`Int32`](../etype#Int32) | 

##### **返回值**
无

### `api_get_shop_tab_cnt` <span id="api_get_shop_tab_cnt"></span>
##### **描述**
获取商店页签数量
##### **参数**
无

##### **返回值**
`ItemKey` : 道具编号

### `api_get_shop_tab_name` <span id="api_get_shop_tab_name"></span>
##### **描述**
获取商店的页签名
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`tab_idx` | 页签id  | [`TabIdx`](../etype#TabIdx) | 

##### **返回值**
`Str` : 页签名

### `api_get_shop_tab_item_type` <span id="api_get_shop_tab_item_type"></span>
##### **描述**
获取商店指定页签第N个商品的类型
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`tab_idx` | 页签id  | [`TabIdx`](../etype#TabIdx) | 
`item_idx` | 商品编号  | [`Int32`](../etype#Int32) | 

##### **返回值**
`ItemKey` : 物品类型

### `api_add_shop_unit` <span id="api_add_shop_unit"></span>
##### **描述**
添加单位商品到商店
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`tab_name` | 页签  | [`TabName`](../etype#TabName) | 
`entity_no` | 单位编号  | [`UnitKey`](../etype#UnitKey) | 

##### **返回值**
无

### `api_remove_shop_item` <span id="api_remove_shop_item"></span>
##### **描述**
删除商店物品商品
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`tab_name` | 页签  | [`TabName`](../etype#TabName) | 
`item_no` | 道具编号  | [`ItemKey`](../etype#ItemKey) | 

##### **返回值**
无

### `api_remove_shop_unit` <span id="api_remove_shop_unit"></span>
##### **描述**
删除商店单位商品
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`tab_name` | 页签  | [`TabName`](../etype#TabName) | 
`entity_no` | 单位编号  | [`UnitKey`](../etype#UnitKey) | 

##### **返回值**
无

### `api_set_shop_item_stock` <span id="api_set_shop_item_stock"></span>
##### **描述**
设置物品商品库存
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`tab_name` | 页签  | [`TabName`](../etype#TabName) | 
`item_no` | 道具编号  | [`ItemKey`](../etype#ItemKey) | 
`cnt` | 库存  | [`UInt32`](../etype#UInt32) | 

##### **返回值**
无

### `api_set_shop_unit_stock` <span id="api_set_shop_unit_stock"></span>
##### **描述**
设置单位商品库存
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`tab_name` | 页签  | [`TabName`](../etype#TabName) | 
`entity_no` | 单位编号  | [`UnitKey`](../etype#UnitKey) | 
`cnt` | 库存  | [`UInt32`](../etype#UInt32) | 

##### **返回值**
无

### `api_set_is_shop` <span id="api_set_is_shop"></span>
##### **描述**
设置商店开关
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`is_shop` | 开关  | [`Bool`](../etype#Bool) | 

##### **返回值**
无

### `api_buy_item_with_tab_name` <span id="api_buy_item_with_tab_name"></span>
##### **描述**
单位购买物品
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`shop_unit` | 商店  | [`Unit`](../etype#Unit) | 
`tab_idx` | 页签id  | [`TabIdx`](../etype#TabIdx) | 
`item_no` | 物品编号  | [`ItemKey`](../etype#ItemKey) | 

##### **返回值**
无

### `api_buy_unit_with_tab_name` <span id="api_buy_unit_with_tab_name"></span>
##### **描述**
单位购买单位
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`shop_unit` | 商店  | [`Unit`](../etype#Unit) | 
`tab_name` | 页签  | [`TabName`](../etype#TabName) | 
`entity_no` | 单位编号  | [`UnitKey`](../etype#UnitKey) | 

##### **返回值**
无

### `api_sell_item` <span id="api_sell_item"></span>
##### **描述**
单位出售物品
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`shop_unit` | 商店  | [`Unit`](../etype#Unit) | 
`item` | 道具  | [`Item`](../etype#Item) | 

##### **返回值**
无

### `api_set_shop_target` <span id="api_set_shop_target"></span>
##### **描述**
设置商店目标
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`target_unit` | 目标  | [`Unit`](../etype#Unit) | 

##### **返回值**
无

### `api_get_shop_item_stock` <span id="api_get_shop_item_stock"></span>
##### **描述**
获取单位商店物品商品库存
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`tab_idx` | 页签id  | [`TabIdx`](../etype#TabIdx) | 
`item_no` | 物品编号  | [`ItemKey`](../etype#ItemKey) | 

##### **返回值**
`Int32` : 商品库存

### `api_get_shop_unit_stock` <span id="api_get_shop_unit_stock"></span>
##### **描述**
获取单位商店单位商品库存
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`tab_name` | 页签  | [`TabName`](../etype#TabName) | 
`entity_no` | 单位编号  | [`UnitKey`](../etype#UnitKey) | 

##### **返回值**
`Int32` : 商品库存

### `api_get_shop_item_price` <span id="api_get_shop_item_price"></span>
##### **描述**
获取单位商店单位商品售价
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`tab_name` | 页签  | [`TabName`](../etype#TabName) | 
`entity_no` | 单位编号  | [`UnitKey`](../etype#UnitKey) | 

##### **返回值**
`Fixed` : 商品售价

### `api_upgrade_tech` <span id="api_upgrade_tech"></span>
##### **描述**
科技升级
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`tech_no` | 科技编号  | [`TechKey`](../etype#TechKey) | 

##### **返回值**
无

### `api_get_tech_list` <span id="api_get_tech_list"></span>
##### **描述**
获取科技列表
##### **参数**
无

##### **返回值**
`TechKey` : 科技编号

### `api_get_affect_techs` <span id="api_get_affect_techs"></span>
##### **描述**
获取科技列表
##### **参数**
无

##### **返回值**
`TechKey` : 科技编号

### `api_check_tech_precondition` <span id="api_check_tech_precondition"></span>
##### **描述**
获取科技是否满足前置条件
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`tech_no` | 科技编号  | [`TechKey`](../etype#TechKey) | 

##### **返回值**
`TechKey` : 科技编号

### `api_add_tech` <span id="api_add_tech"></span>
##### **描述**
添加科技
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`tech_no` | 科技编号  | [`TechKey`](../etype#TechKey) | 

##### **返回值**
无

### `api_remove_tech` <span id="api_remove_tech"></span>
##### **描述**
删除科技
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`tech_no` | 科技编号  | [`TechKey`](../etype#TechKey) | 

##### **返回值**
无

### `api_release_command` <span id="api_release_command"></span>
##### **描述**
发布命令
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`command` | 命令  | [`UnitCommand`](../etype#UnitCommand) | 

##### **返回值**
无

### `api_set_default_switch_behavior` <span id="api_set_default_switch_behavior"></span>
##### **描述**
设置单位默认跳转状态
##### **参数**
参数名        | 描述         | 类型         | 默认值
:----------- | :----------- | :----------- | :----
`behavior` | 默认跳转状态  | [`UnitBehavior`](../etype#UnitBehavior) | 

##### **返回值**
无
