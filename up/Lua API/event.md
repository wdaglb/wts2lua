# Event
-----
## 基本类型

### `LOGIC_UNIT_DESTROY`
<span id="LOGIC_UNIT_DESTROY"></span>
##### **名称:** LOGIC_UNIT_DESTROY
##### **参数**
无


### `TIMEOUT`
<span id="TIMEOUT"></span>
##### **名称:** 定时器超时
##### **参数**
无


### `REPEAT_TIMEOUT`
<span id="REPEAT_TIMEOUT"></span>
##### **名称:** 周期性定时器超时
##### **参数**
无


### `GAME_INIT`
<span id="GAME_INIT"></span>
##### **名称:** 游戏初始化
##### **参数**
无


### `LOADING_END`
<span id="LOADING_END"></span>
##### **名称:** Loading结束
##### **参数**
无


### `RELAUNCH_FRAME_CATCHING_FINISHED`
<span id="RELAUNCH_FRAME_CATCHING_FINISHED"></span>
##### **名称:** 重启客户端追帧完成
##### **参数**
无


### `RECV_TRIGGER`
<span id="RECV_TRIGGER"></span>
##### **名称:** 接收触发事件
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__trigger_id` | 触发器id  | [`TriggerID`](../etype#TriggerID)


### `GAME_END`
<span id="GAME_END"></span>
##### **名称:** 游戏结束
##### **参数**
无


### `GAME_PAUSE`
<span id="GAME_PAUSE"></span>
##### **名称:** 游戏暂停
##### **参数**
无


### `GAME_RESUME`
<span id="GAME_RESUME"></span>
##### **名称:** 游戏恢复
##### **参数**
无


### `EMPTY`
<span id="EMPTY"></span>
##### **名称:** 空事件
##### **参数**
无


### `ER_TIMEOUT`
<span id="ER_TIMEOUT"></span>
##### **名称:** 全局计时器超时
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__name` | 计时器名称  | [`Str`](../etype#Str)


### `DAY_NIGHT_CHANGE`
<span id="DAY_NIGHT_CHANGE"></span>
##### **名称:** 昼夜发生变化
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__is_day_to_night` | 是否是白天转到黑夜  | [`Bool`](../etype#Bool)


### `CONTAINER_ADDED`
<span id="CONTAINER_ADDED"></span>
##### **名称:** 添加容器
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__name` | 容器名  | [`Str`](../etype#Str)
`__container` | 容器  | [`ActorContainer`](../etype#ActorContainer)


### `CONTAINER_ACTOR_ADDED`
<span id="CONTAINER_ACTOR_ADDED"></span>
##### **名称:** 容器中添加actor
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__owner` | 容器从属actor  | [`Actor`](../etype#Actor)


### `CONTAINER_ACTOR_REMOVED`
<span id="CONTAINER_ACTOR_REMOVED"></span>
##### **名称:** 容器中删除actor
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__owner` | 原容器从属actor  | [`Actor`](../etype#Actor)


### `ACTOR_ATTR_UPDATED`
<span id="ACTOR_ATTR_UPDATED"></span>
##### **名称:** actor属性更新
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__name` | 属性名  | [`Str`](../etype#Str)


### `AREA_ENTER`
<span id="AREA_ENTER"></span>
##### **名称:** 单位进入区域
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__unit_id` | 单位ID  | [`UnitID`](../etype#UnitID)
`__area_id` | 区域ID  | [`AreaID`](../etype#AreaID)
`__trigger_id` | 触发器ID  | [`TriggerID`](../etype#TriggerID)


### `AREA_LEAVE`
<span id="AREA_LEAVE"></span>
##### **名称:** 单位离开区域
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__unit_id` | 单位ID  | [`UnitID`](../etype#UnitID)
`__area_id` | 区域ID  | [`AreaID`](../etype#AreaID)
`__trigger_id` | 触发器ID  | [`TriggerID`](../etype#TriggerID)


### `ROLE_JOIN_BATTLE`
<span id="ROLE_JOIN_BATTLE"></span>
##### **名称:** 玩家加入战斗
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__role_id` | 玩家ID  | [`RoleID`](../etype#RoleID)
`__is_middle_join` | 是否中途加入  | [`Bool`](../etype#Bool)


### `ROLE_ACTIVE_EXIT_GAME_EVENT`
<span id="ROLE_ACTIVE_EXIT_GAME_EVENT"></span>
##### **名称:** 玩家主动退出游戏
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__role_id` | 玩家ID  | [`RoleID`](../etype#RoleID)


### `ROLE_LOSE_CONNECT`
<span id="ROLE_LOSE_CONNECT"></span>
##### **名称:** 玩家断开服务器连接
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__role_id` | 玩家ID  | [`RoleID`](../etype#RoleID)


### `AI_TAKE_CONTROL`
<span id="AI_TAKE_CONTROL"></span>
##### **名称:** AI接管玩家
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__role_id` | 玩家ID  | [`RoleID`](../etype#RoleID)


### `DOWNLOAD_MAP_ARCHIVE_CALLBACK`
<span id="DOWNLOAD_MAP_ARCHIVE_CALLBACK"></span>
##### **名称:** 下载档案数据回调
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__role_id` | 玩家ID  | [`RoleID`](../etype#RoleID)


### `ROLE_USE_STORE_ITEM_END`
<span id="ROLE_USE_STORE_ITEM_END"></span>
##### **名称:** 玩家成功使用收费道具
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__role_id` | 玩家ID  | [`RoleID`](../etype#RoleID)
`__store_key` | 收费道具编号  | [`StoreKey`](../etype#StoreKey)
`__use_cnt` | 使用次数  | [`UInt32`](../etype#UInt32)


### `CONSUME_STORE_ITEM`
<span id="CONSUME_STORE_ITEM"></span>
##### **名称:** 玩家成功使用收费道具（触发器内）
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__role_id` | 玩家ID  | [`RoleID`](../etype#RoleID)
`__store_key` | 收费道具编号  | [`StoreKey`](../etype#StoreKey)


### `ROLE_HOLD_STORE_ITEM`
<span id="ROLE_HOLD_STORE_ITEM"></span>
##### **名称:** 玩家持有收费道具
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__role_id` | 玩家ID  | [`RoleID`](../etype#RoleID)
`__store_key` | 收费道具编号  | [`StoreKey`](../etype#StoreKey)


### `ROLE_RESOURCE_CHANGED`
<span id="ROLE_RESOURCE_CHANGED"></span>
##### **名称:** 玩家资源变化
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__role_id` | 玩家ID  | [`RoleID`](../etype#RoleID)
`__res_key` | 玩家资源类型  | [`RoleResKey`](../etype#RoleResKey)
`__res_value` | 玩家资源值  | [`Int32`](../etype#Int32)


### `ROLE_INPUT_MSG`
<span id="ROLE_INPUT_MSG"></span>
##### **名称:** 玩家输入字符串
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__role_id` | 玩家ID  | [`RoleID`](../etype#RoleID)
`__msg` | 字符串  | [`Str`](../etype#Str)


### `ROLE_INPUT_ACTIVATION_CODE`
<span id="ROLE_INPUT_ACTIVATION_CODE"></span>
##### **名称:** 玩家输入激活码
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__role_id` | 玩家ID  | [`RoleID`](../etype#RoleID)
`__activation_code_group` | 激活码组  | [`Str`](../etype#Str)


### `ROLE_TECH_UPGRADE`
<span id="ROLE_TECH_UPGRADE"></span>
##### **名称:** 玩家科技升级
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__role_id` | 玩家ID  | [`RoleID`](../etype#RoleID)
`__tech_no` | 科技编号  | [`TechKey`](../etype#TechKey)
`__curr_lv` | 当前科技等级  | [`Int32`](../etype#Int32)


### `ROLE_TECH_DOWNGRADE`
<span id="ROLE_TECH_DOWNGRADE"></span>
##### **名称:** 玩家科技降级
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__role_id` | 玩家ID  | [`RoleID`](../etype#RoleID)
`__tech_no` | 科技编号  | [`TechKey`](../etype#TechKey)
`__curr_lv` | 当前科技等级  | [`Int32`](../etype#Int32)


### `ROLE_TECH_CHANGED`
<span id="ROLE_TECH_CHANGED"></span>
##### **名称:** 玩家科技变化
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__role_id` | 玩家ID  | [`RoleID`](../etype#RoleID)
`__tech_no` | 科技编号  | [`TechKey`](../etype#TechKey)
`__tech_no` | 当前科技等级  | [`Int32`](../etype#Int32)
`__delta_lv` | 科技变化等级  | [`Int32`](../etype#Int32)


### `UNIT_UPGRADE_TECH`
<span id="UNIT_UPGRADE_TECH"></span>
##### **名称:** 单位研发科技
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__unit_id` | 单位ID  | [`UnitID`](../etype#UnitID)
`__role_id` | 单位所属玩家ID  | [`RoleID`](../etype#RoleID)
`__tech_no` | 科技编号  | [`TechKey`](../etype#TechKey)


### `UNIT_ADD_TECH`
<span id="UNIT_ADD_TECH"></span>
##### **名称:** 单位添加科技
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__unit_id` | 单位ID  | [`UnitID`](../etype#UnitID)
`__role_id` | 单位所属玩家ID  | [`RoleID`](../etype#RoleID)
`__tech_no` | 科技编号  | [`TechKey`](../etype#TechKey)


### `UNIT_REMOVE_TECH`
<span id="UNIT_REMOVE_TECH"></span>
##### **名称:** 单位删除科技
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__unit_id` | 单位ID  | [`UnitID`](../etype#UnitID)
`__role_id` | 单位所属玩家ID  | [`RoleID`](../etype#RoleID)
`__tech_no` | 科技编号  | [`TechKey`](../etype#TechKey)


### `ROLE_CHANGE_RELATION`
<span id="ROLE_CHANGE_RELATION"></span>
##### **名称:** 玩家敌对关系变化
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__src_role_id` | 源玩家ID  | [`RoleID`](../etype#RoleID)
`__dst_role_id` | 目标玩家ID  | [`RoleID`](../etype#RoleID)
`__relation` | 关系  | [`RoleRelation`](../etype#RoleRelation)


### `ABILITY_BUILD_FINISH`
<span id="ABILITY_BUILD_FINISH"></span>
##### **名称:** 建筑技能建造成功
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__ability` | 技能  | [`Ability`](../etype#Ability)
`__ability_type` | 技能类型  | [`AbilityType`](../etype#AbilityType)
`__ability_index` | 技能ID  | [`AbilityIndex`](../etype#AbilityIndex)
`__ability_seq` | 技能Seq  | [`AbilitySeq`](../etype#AbilitySeq)
`__unit_id` | 主人  | [`UnitID`](../etype#UnitID)
`__build_unit_id` | 建造出来的单位ID  | [`UnitID`](../etype#UnitID)


### `ATTACK_HIT_TARGET`
<span id="ATTACK_HIT_TARGET"></span>
##### **名称:** 普通攻击命中
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__ability_id` | 技能id  | [`UInt32`](../etype#UInt32)


### `ATTACK_HURT`
<span id="ATTACK_HURT"></span>
##### **名称:** 普通攻击造成伤害
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__ability_id` | 技能id  | [`UInt32`](../etype#UInt32)
`__other_unit` | 被伤害的单位  | [`Unit`](../etype#Unit)


### `ABILITY_CD_CHANGE`
<span id="ABILITY_CD_CHANGE"></span>
##### **名称:** 技能CD变化
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__ability_index` | 技能坑位  | [`AbilityIndex`](../etype#AbilityIndex)
`__left` | cd剩余时间  | [`Fixed`](../etype#Fixed)
`__total` | cd总时长  | [`Fixed`](../etype#Fixed)
`__ability_id` | 技能id  | [`AbilityKey`](../etype#AbilityKey)


### `ACTIVE_ABILITY_CHANGED`
<span id="ACTIVE_ABILITY_CHANGED"></span>
##### **名称:** 单位获得新技能
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__ability_index` | 技能坑位  | [`AbilityIndex`](../etype#AbilityIndex)


### `ABILITY_STACK_CHANGE`
<span id="ABILITY_STACK_CHANGE"></span>
##### **名称:** 技能充能层数变化
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__ability_index` | 技能坑位  | [`AbilityIndex`](../etype#AbilityIndex)
`__stack` | 技能充能层数  | [`Fixed`](../etype#Fixed)


### `ABILITY_PLUS_POINT`
<span id="ABILITY_PLUS_POINT"></span>
##### **名称:** 技能加点
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__ability_index` | 技能坑位  | [`AbilityIndex`](../etype#AbilityIndex)


### `ABILITY_STACK_CD_CHANGE`
<span id="ABILITY_STACK_CD_CHANGE"></span>
##### **名称:** 充能CD变化
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__ability_index` | 技能坑位  | [`AbilityIndex`](../etype#AbilityIndex)
`__left` | 充能cd剩余时间  | [`Fixed`](../etype#Fixed)
`__total` | 充能cd总时长  | [`Fixed`](../etype#Fixed)


### `ABILITY_FORBIDDEN_CHANGED`
<span id="ABILITY_FORBIDDEN_CHANGED"></span>
##### **名称:** 技能禁用状态发生变化
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__ability_index` | 技能坑位  | [`AbilityIndex`](../etype#AbilityIndex)
`__is_forbidden` | 是否禁用  | [`Bool`](../etype#Bool)


### `ABILITY_SILENT_CHANGED`
<span id="ABILITY_SILENT_CHANGED"></span>
##### **名称:** 技能的沉默状态发生变化
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__is_silent` | 是否禁用  | [`Bool`](../etype#Bool)


### `UNIT_NAME_CHANGE`
<span id="UNIT_NAME_CHANGE"></span>
##### **名称:** 单位的名称发生变化
##### **参数**
无


### `UNIT_CHANGE_MINI_MAP_ICON`
<span id="UNIT_CHANGE_MINI_MAP_ICON"></span>
##### **名称:** 单位的小地图图标发生变化
##### **参数**
无


### `UNIT_ICON_CHANGE`
<span id="UNIT_ICON_CHANGE"></span>
##### **名称:** 单位头像图标发生变化
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__unit_id` | 单位ID  | [`UnitID`](../etype#UnitID)


### `ROLE_UNIT_CHANGE`
<span id="ROLE_UNIT_CHANGE"></span>
##### **名称:** 阵营内单位变化
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__unit_id` | 单位ID  | [`UnitID`](../etype#UnitID)


### `ROLE_UNIT_TAG_CHANGE`
<span id="ROLE_UNIT_TAG_CHANGE"></span>
##### **名称:** 阵营内单位标签变化
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__unit_id` | 单位ID  | [`UnitID`](../etype#UnitID)


### `UNIT_ENTER_MOVER_STATE`
<span id="UNIT_ENTER_MOVER_STATE"></span>
##### **名称:** 单位进入运动器状态
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__unit_id` | 单位ID  | [`UnitID`](../etype#UnitID)


### `UNIT_START_MOVE`
<span id="UNIT_START_MOVE"></span>
##### **名称:** 单位开始移动
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__unit_id` | 单位ID  | [`UnitID`](../etype#UnitID)


### `UNIT_END_MOVE`
<span id="UNIT_END_MOVE"></span>
##### **名称:** 单位结束移动
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__unit_id` | 单位ID  | [`UnitID`](../etype#UnitID)


### `UNIT_REMOVE`
<span id="UNIT_REMOVE"></span>
##### **名称:** 单位删除（ECA专用）
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__unit_id` | 单位ID  | [`UnitID`](../etype#UnitID)


### `UNIT_DELETE`
<span id="UNIT_DELETE"></span>
##### **名称:** 单位删除（对象真正销毁）
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__unit_id` | 单位ID  | [`UnitID`](../etype#UnitID)


### `UNIT_END_TRANSLATE`
<span id="UNIT_END_TRANSLATE"></span>
##### **名称:** 单位传送结束
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__unit_id` | 单位ID  | [`UnitID`](../etype#UnitID)


### `UNIT_ATTR_CHANGE`
<span id="UNIT_ATTR_CHANGE"></span>
##### **名称:** 单位属性变化
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__unit_id` | 单位ID  | [`UnitID`](../etype#UnitID)
`__attr` | 字符串  | [`Str`](../etype#Str)


### `BEFORE_UNIT_DIE`
<span id="BEFORE_UNIT_DIE"></span>
##### **名称:** 单位即将死亡
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__damage` | 受到的伤害值  | [`Fixed`](../etype#Fixed)
`__source_unit` | 施加伤害的单位  | [`Unit`](../etype#Unit)
`__target_unit` | 承受伤害的单位  | [`Unit`](../etype#Unit)
`__ability` | 当前伤害所属技能  | [`Ability`](../etype#Ability)
`__damage_type` | 伤害类型  | [`Int32`](../etype#Int32)
`__unit_id` | 单位ID  | [`UnitID`](../etype#UnitID)


### `UNIT_DIE`
<span id="UNIT_DIE"></span>
##### **名称:** 单位死亡
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__damage` | 受到的伤害值  | [`Fixed`](../etype#Fixed)
`__source_unit` | 施加伤害的单位  | [`Unit`](../etype#Unit)
`__target_unit` | 承受伤害的单位  | [`Unit`](../etype#Unit)
`__ability` | 当前伤害所属技能  | [`Ability`](../etype#Ability)
`__damage_type` | 伤害类型  | [`Int32`](../etype#Int32)
`__unit_id` | 单位ID  | [`UnitID`](../etype#UnitID)


### `UNIT_ON_UNBIND_ROLE`
<span id="UNIT_ON_UNBIND_ROLE"></span>
##### **名称:** 单位解绑玩家
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__unit_id` | 单位ID  | [`UnitID`](../etype#UnitID)
`__role_id` | 玩家ID  | [`RoleID`](../etype#RoleID)


### `UNIT_ON_BIND_ROLE`
<span id="UNIT_ON_BIND_ROLE"></span>
##### **名称:** 单位绑定玩家
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__unit_id` | 单位ID  | [`UnitID`](../etype#UnitID)
`__role_id` | 玩家ID  | [`RoleID`](../etype#RoleID)


### `UNIT_BE_HURT`
<span id="UNIT_BE_HURT"></span>
##### **名称:** 单位受到攻击
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__damage` | 受到的伤害值  | [`Fixed`](../etype#Fixed)
`__source_unit` | 施加伤害的单位  | [`Unit`](../etype#Unit)
`__target_unit` | 承受伤害的单位  | [`Unit`](../etype#Unit)
`__ability` | 当前伤害所属技能  | [`Ability`](../etype#Ability)
`__damage_type` | 伤害类型  | [`Int32`](../etype#Int32)
`__unit_id` | 单位ID  | [`UnitID`](../etype#UnitID)


### `UNIT_HURT_OTHER`
<span id="UNIT_HURT_OTHER"></span>
##### **名称:** 单位击中其他单位
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__damage` | 受到的伤害值  | [`Fixed`](../etype#Fixed)
`__source_unit` | 施加伤害的单位  | [`Unit`](../etype#Unit)
`__target_unit` | 承受伤害的单位  | [`Unit`](../etype#Unit)
`__ability` | 当前伤害所属技能  | [`Ability`](../etype#Ability)
`__damage_type` | 伤害类型  | [`Int32`](../etype#Int32)
`__unit_id` | 单位ID  | [`UnitID`](../etype#UnitID)


### `UNIT_HURT_OTHER_FINISH`
<span id="UNIT_HURT_OTHER_FINISH"></span>
##### **名称:** 单位实际对其他单位造成伤害
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__is_critical_hit` | 是否是暴击  | [`Fixed`](../etype#Fixed)
`__is_normal_hit` | 是否是普通攻击  | [`Bool`](../etype#Bool)
`__damage` | 受到的伤害值  | [`Fixed`](../etype#Fixed)
`__source_unit` | 施加伤害的单位  | [`Unit`](../etype#Unit)
`__target_unit` | 承受伤害的单位  | [`Unit`](../etype#Unit)
`__ability` | 当前伤害所属技能  | [`Ability`](../etype#Ability)
`__damage_type` | 伤害类型  | [`Int32`](../etype#Int32)
`__unit_id` | 单位ID  | [`UnitID`](../etype#UnitID)


### `UNIT_BE_HURT_COMPLETE`
<span id="UNIT_BE_HURT_COMPLETE"></span>
##### **名称:** 单位实际受到伤害
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__is_critical_hit` | 是否是暴击  | [`Fixed`](../etype#Fixed)
`__is_normal_hit` | 是否是普通攻击  | [`Bool`](../etype#Bool)
`__damage` | 受到的伤害值  | [`Fixed`](../etype#Fixed)
`__source_unit` | 施加伤害的单位  | [`Unit`](../etype#Unit)
`__target_unit` | 承受伤害的单位  | [`Unit`](../etype#Unit)
`__ability` | 当前伤害所属技能  | [`Ability`](../etype#Ability)
`__damage_type` | 伤害类型  | [`Int32`](../etype#Int32)
`__unit_id` | 单位ID  | [`UnitID`](../etype#UnitID)


### `UNIT_GET_CURE`
<span id="UNIT_GET_CURE"></span>
##### **名称:** 单位受到治疗
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__cured_value` | 受到的治疗值  | [`Fixed`](../etype#Fixed)


### `RES_ICON_CHANGED`
<span id="RES_ICON_CHANGED"></span>
##### **名称:** 修改玩家属性图标
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__res_key` | 资源  | [`RoleResKey`](../etype#RoleResKey)
`__icon_id` | ICON ID  | [`Int32`](../etype#Int32)


### `UNIT_RELEASE_ABILITY`
<span id="UNIT_RELEASE_ABILITY"></span>
##### **名称:** 单位施放技能事件
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__ability` | 施放的技能对象  | [`Ability`](../etype#Ability)
`__unit_id` | 触发事件的单位unit_id  | [`UnitID`](../etype#UnitID)


### `UNIT_RELEASE_ABILITY_START`
<span id="UNIT_RELEASE_ABILITY_START"></span>
##### **名称:** 单位施放技能开始事件
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__ability` | 施放的技能对象  | [`Ability`](../etype#Ability)
`__unit_id` | 触发事件的单位unit_id  | [`UnitID`](../etype#UnitID)


### `UNIT_RELEASE_ABILITY_END`
<span id="UNIT_RELEASE_ABILITY_END"></span>
##### **名称:** 单位施放技能结束事件
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__ability` | 施放的技能对象  | [`Ability`](../etype#Ability)
`__unit_id` | 触发事件的单位unit_id  | [`UnitID`](../etype#UnitID)


### `UNIT_RELEASE_MAGIC_BOOK`
<span id="UNIT_RELEASE_MAGIC_BOOK"></span>
##### **名称:** 单位施放技能事件
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__ability` | 施放的技能对象  | [`Ability`](../etype#Ability)
`__unit_id` | 触发事件的单位unit_id  | [`UnitID`](../etype#UnitID)


### `UNIT_LEVEL_CHANGE`
<span id="UNIT_LEVEL_CHANGE"></span>
##### **名称:** 单位技能变化事件
##### **参数**
无


### `UNIT_EXP_CHANGE`
<span id="UNIT_EXP_CHANGE"></span>
##### **名称:** 单位经验变化事件
##### **参数**
无


### `UNIT_PRE_ADD_EXP`
<span id="UNIT_PRE_ADD_EXP"></span>
##### **名称:** 单位即将获得经验
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__unit_id` | 获得经验的单位  | [`UnitID`](../etype#UnitID)
`__add_exp` | 增加的经验  | [`Float`](../etype#Float)


### `UNIT_ON_ADD_EXP`
<span id="UNIT_ON_ADD_EXP"></span>
##### **名称:** 单位获得经验
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__unit_id` | 获得经验的单位  | [`UnitID`](../etype#UnitID)
`__add_exp` | 增加的经验  | [`Float`](../etype#Float)


### `UNIT_ON_COMMAND`
<span id="UNIT_ON_COMMAND"></span>
##### **名称:** 单位接收命令
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__unit_id` | 单位  | [`UnitID`](../etype#UnitID)
`__cmd_type` | 接收的命令  | [`UnitCommand`](../etype#UnitCommand)
`__target_unit` | 目标单位  | [`Unit`](../etype#Unit)
`__point` | 目标点  | [`Point`](../etype#Point)
`__destructible_id` | 目标可破坏物ID  | [`DestructibleID`](../etype#DestructibleID)
`__item_id` | 目标物品ID  | [`ItemID`](../etype#ItemID)


### `KILL_UNIT`
<span id="KILL_UNIT"></span>
##### **名称:** 单位击杀其他单位
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__damage` | 伤害值  | [`Fixed`](../etype#Fixed)
`__source_unit` | 杀手单位  | [`Unit`](../etype#Unit)
`__target_unit` | 死亡单位  | [`Unit`](../etype#Unit)
`__ability` | 致命伤害所属技能  | [`Ability`](../etype#Ability)
`__damage_type` | 致命伤害类型  | [`Int32`](../etype#Int32)
`__unit_id` | 单位ID  | [`UnitID`](../etype#UnitID)


### `UNIT_BORN`
<span id="UNIT_BORN"></span>
##### **名称:** 单位出生
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__unit_id` | 单位ID  | [`UnitID`](../etype#UnitID)


### `UNIT_ENTER_BATTLE`
<span id="UNIT_ENTER_BATTLE"></span>
##### **名称:** 单位进入战斗状态
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__unit_id` | 单位id  | [`UnitID`](../etype#UnitID)


### `UNIT_EXIT_BATTLE`
<span id="UNIT_EXIT_BATTLE"></span>
##### **名称:** 单位脱离战斗状态
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__unit_id` | 单位id  | [`UnitID`](../etype#UnitID)


### `UNIT_CREATE_SLAVE`
<span id="UNIT_CREATE_SLAVE"></span>
##### **名称:** 单位创建仆从
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__unit_id` | 仆从id  | [`UnitID`](../etype#UnitID)


### `ITEM_ATTACHED_ATTR_CHANGED`
<span id="ITEM_ATTACHED_ATTR_CHANGED"></span>
##### **名称:** 物品附加属性变化
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__item_id` | 物品ID  | [`ItemID`](../etype#ItemID)
`__attr_key` | 字符串  | [`Str`](../etype#Str)
`__delta` | 定点数  | [`Fixed`](../etype#Fixed)


### `UNIT_SHOP_BUY_ITEM`
<span id="UNIT_SHOP_BUY_ITEM"></span>
##### **名称:** 商品购买
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__unit_id` | 购买物品单位id  | [`UnitID`](../etype#UnitID)
`__shop_unit_id` | 商店单位id  | [`UnitID`](../etype#UnitID)
`__tab_idx` | 商店分页  | [`Int32`](../etype#Int32)
`__cnt` | 商品数量  | [`UInt32`](../etype#UInt32)
`__item_stuff_id` | 商品物品id  | [`ItemID`](../etype#ItemID)


### `UNIT_SHOP_BUY_UNIT`
<span id="UNIT_SHOP_BUY_UNIT"></span>
##### **名称:** 商品购买
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__unit_id` | 购买物品单位id  | [`UnitID`](../etype#UnitID)
`__shop_unit_id` | 商店单位id  | [`UnitID`](../etype#UnitID)
`__tab_idx` | 商店分页  | [`Int32`](../etype#Int32)
`__cnt` | 商品数量  | [`UInt32`](../etype#UInt32)
`__unit_stuff_id` | 商品单位id  | [`UnitID`](../etype#UnitID)


### `UNIT_ITEM_SELL`
<span id="UNIT_ITEM_SELL"></span>
##### **名称:** 道具出售
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__unit_id` | 购买物品单位id  | [`UnitID`](../etype#UnitID)
`__shop_unit_id` | 商店单位id  | [`UnitID`](../etype#UnitID)
`__item_id` | 道具id  | [`ItemID`](../etype#ItemID)


### `SHOP_ITEM_CHANGED`
<span id="SHOP_ITEM_CHANGED"></span>
##### **名称:** 商店商品变化
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__shop_unit_id` | 商店单位id  | [`UnitID`](../etype#UnitID)
`__tab_idx` | 商店分页  | [`Int32`](../etype#Int32)
`__shop_key` | 商品id  | [`Str`](../etype#Str)
`__curr_stock` | 当前库存  | [`Int32`](../etype#Int32)


### `SHOP_STOCK_CHANGED`
<span id="SHOP_STOCK_CHANGED"></span>
##### **名称:** 商品库存变化
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__shop_unit_id` | 商店单位id  | [`UnitID`](../etype#UnitID)
`__tab_idx` | 商店分页  | [`Int32`](../etype#Int32)
`__shop_key` | 商品id  | [`Str`](../etype#Str)
`__curr_stock` | 当前库存  | [`Int32`](../etype#Int32)


### `SHOP_RES_COST_CHANGED`
<span id="SHOP_RES_COST_CHANGED"></span>
##### **名称:** 商品售价变化
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__shop_unit_id` | 商店单位id  | [`UnitID`](../etype#UnitID)
`__tab_idx` | 商店分页  | [`Int32`](../etype#Int32)
`__shop_key` | 商品id  | [`Str`](../etype#Str)
`__res_type` | 资源编号  | [`RoleResKey`](../etype#RoleResKey)
`__res_cost` | 当前售价  | [`Int32`](../etype#Int32)


### `UNIT_ITEM_COMPOSE`
<span id="UNIT_ITEM_COMPOSE"></span>
##### **名称:** 道具合成事件
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__unit_id` | 单位id  | [`UnitID`](../etype#UnitID)
`__compose_id` | 道具编号  | [`ItemKey`](../etype#ItemKey)


### `UNIT_SHOP_BUY_WITH_COMPOSE`
<span id="UNIT_SHOP_BUY_WITH_COMPOSE"></span>
##### **名称:** 商品合成购买
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__unit_id` | 购买物品单位id  | [`UnitID`](../etype#UnitID)
`__shop_unit_id` | 商店单位id  | [`UnitID`](../etype#UnitID)
`__item_id` | 物品编号  | [`ItemID`](../etype#ItemID)


### `REVIVE_UNIT`
<span id="REVIVE_UNIT"></span>
##### **名称:** 单位重生
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__unit_id` | 单位ID  | [`UnitID`](../etype#UnitID)


### `UPGRADE_UNIT`
<span id="UPGRADE_UNIT"></span>
##### **名称:** 单位升级
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__unit_id` | 单位ID  | [`UnitID`](../etype#UnitID)


### `REACH_MOVE_TARGET_UNIT`
<span id="REACH_MOVE_TARGET_UNIT"></span>
##### **名称:** 单位运动目标达成
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__unit_id` | 单位ID  | [`UnitID`](../etype#UnitID)


### `COLLIDE_OBSTACLE_UNIT`
<span id="COLLIDE_OBSTACLE_UNIT"></span>
##### **名称:** 单位碰撞到障碍
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__unit_id` | 单位ID  | [`UnitID`](../etype#UnitID)


### `UNIT_ENTER_GRASS`
<span id="UNIT_ENTER_GRASS"></span>
##### **名称:** 单位进入草丛
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__unit_id` | 单位id  | [`UnitID`](../etype#UnitID)


### `UNIT_LEAVE_GRASS`
<span id="UNIT_LEAVE_GRASS"></span>
##### **名称:** 单位离开草丛
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__unit_id` | 单位id  | [`UnitID`](../etype#UnitID)


### `MAP_VISIBILITY_CHANGE`
<span id="MAP_VISIBILITY_CHANGE"></span>
##### **名称:** 地图显隐因触发器发生变化
##### **参数**
无


### `UNIT_PRECONDITION_SUCCEED`
<span id="UNIT_PRECONDITION_SUCCEED"></span>
##### **名称:** 单位类型的前置条件满足要求
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`unit_key` | 单位类型  | [`UnitKey`](../etype#UnitKey)
`__role_id` | 玩家ID  | [`RoleID`](../etype#RoleID)


### `UNIT_PRECONDITION_FAILED`
<span id="UNIT_PRECONDITION_FAILED"></span>
##### **名称:** 单位类型的前置条件不满足要求
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`unit_key` | 单位类型  | [`UnitKey`](../etype#UnitKey)
`__role_id` | 玩家ID  | [`RoleID`](../etype#RoleID)


### `ITEM_PRECONDITION_SUCCEED`
<span id="ITEM_PRECONDITION_SUCCEED"></span>
##### **名称:** 物品类型的前置条件满足要求
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__item_no` | 物品类型  | [`ItemKey`](../etype#ItemKey)
`__role_id` | 玩家ID  | [`RoleID`](../etype#RoleID)


### `ITEM_PRECONDITION_FAILED`
<span id="ITEM_PRECONDITION_FAILED"></span>
##### **名称:** 物品类型的前置条件不满足要求
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__item_no` | 物品类型  | [`ItemKey`](../etype#ItemKey)
`__role_id` | 玩家ID  | [`RoleID`](../etype#RoleID)


### `ABILITY_PRECONDITION_SUCCEED`
<span id="ABILITY_PRECONDITION_SUCCEED"></span>
##### **名称:** 技能类型的前置条件满足要求
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__ability_id` | 技能类型  | [`AbilityKey`](../etype#AbilityKey)
`__role_id` | 玩家ID  | [`RoleID`](../etype#RoleID)


### `ABILITY_PRECONDITION_FAILED`
<span id="ABILITY_PRECONDITION_FAILED"></span>
##### **名称:** 技能类型的前置条件不满足要求
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__ability_id` | 技能类型  | [`AbilityKey`](../etype#AbilityKey)
`__role_id` | 玩家ID  | [`RoleID`](../etype#RoleID)


### `TECH_PRECONDITION_SUCCEED`
<span id="TECH_PRECONDITION_SUCCEED"></span>
##### **名称:** 科技类型的前置条件满足要求
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__tech_no` | 科技类型  | [`TechKey`](../etype#TechKey)
`__role_id` | 玩家ID  | [`RoleID`](../etype#RoleID)


### `TECH_PRECONDITION_FAILED`
<span id="TECH_PRECONDITION_FAILED"></span>
##### **名称:** 科技类型的前置条件不满足要求
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__tech_no` | 科技类型  | [`TechKey`](../etype#TechKey)
`__role_id` | 玩家ID  | [`RoleID`](../etype#RoleID)


### `ABILITY_UPGRADE`
<span id="ABILITY_UPGRADE"></span>
##### **名称:** 技能升级
##### **参数**
无


### `ABILITY_CS_START`
<span id="ABILITY_CS_START"></span>
##### **名称:** 技能开始施法
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__ability` | 技能对象  | [`Ability`](../etype#Ability)


### `ABILITY_CS_END`
<span id="ABILITY_CS_END"></span>
##### **名称:** 技能开始施法结束
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__ability` | 技能对象  | [`Ability`](../etype#Ability)


### `ABILITY_PS_START`
<span id="ABILITY_PS_START"></span>
##### **名称:** 技能前摇开始
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__ability` | 技能对象  | [`Ability`](../etype#Ability)


### `ABILITY_PS_END`
<span id="ABILITY_PS_END"></span>
##### **名称:** 技能前摇结束
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__ability` | 技能对象  | [`Ability`](../etype#Ability)


### `ITEM_ABILITY_PS_END`
<span id="ITEM_ABILITY_PS_END"></span>
##### **名称:** 道具技能前摇结束
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__ability` | 技能对象  | [`Ability`](../etype#Ability)


### `ABILITY_SP_END`
<span id="ABILITY_SP_END"></span>
##### **名称:** 技能准备结束
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__ability` | 技能对象  | [`Ability`](../etype#Ability)


### `ABILITY_CST_END`
<span id="ABILITY_CST_END"></span>
##### **名称:** 技能持续施法结束
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__ability` | 技能对象  | [`Ability`](../etype#Ability)


### `ABILITY_BS_END`
<span id="ABILITY_BS_END"></span>
##### **名称:** 技能后摇结束
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__ability` | 技能对象  | [`Ability`](../etype#Ability)


### `ABILITY_CS_INTERRUPT`
<span id="ABILITY_CS_INTERRUPT"></span>
##### **名称:** 技能准备阶段被打断
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__ability` | 技能对象  | [`Ability`](../etype#Ability)


### `ABILITY_PS_INTERRUPT`
<span id="ABILITY_PS_INTERRUPT"></span>
##### **名称:** 技能前摇阶段被打断
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__ability` | 技能对象  | [`Ability`](../etype#Ability)


### `ABILITY_SP_INTERRUPT`
<span id="ABILITY_SP_INTERRUPT"></span>
##### **名称:** 技能准备阶段被打断
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__ability` | 技能对象  | [`Ability`](../etype#Ability)


### `ABILITY_CST_INTERRUPT`
<span id="ABILITY_CST_INTERRUPT"></span>
##### **名称:** 技能持续施法阶段被打断
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__ability` | 技能对象  | [`Ability`](../etype#Ability)


### `ABILITY_BS_INTERRUPT`
<span id="ABILITY_BS_INTERRUPT"></span>
##### **名称:** 技能后摇阶段被打断
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__ability` | 技能对象  | [`Ability`](../etype#Ability)


### `ABILITY_END`
<span id="ABILITY_END"></span>
##### **名称:** 技能结束（无论何种方式）
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__ability` | 技能对象  | [`Ability`](../etype#Ability)


### `ABILITY_OBTAIN`
<span id="ABILITY_OBTAIN"></span>
##### **名称:** 获得技能
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__ability` | 技能对象  | [`Ability`](../etype#Ability)


### `ABILITY_LOSE`
<span id="ABILITY_LOSE"></span>
##### **名称:** 失去技能
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__ability` | 技能对象  | [`Ability`](../etype#Ability)


### `ABILITY_SWITCH`
<span id="ABILITY_SWITCH"></span>
##### **名称:** 交换技能
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__ability` | 技能对象  | [`Ability`](../etype#Ability)


### `ABILITY_DISABLE`
<span id="ABILITY_DISABLE"></span>
##### **名称:** 技能禁用
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__ability` | 技能对象  | [`Ability`](../etype#Ability)


### `ABILITY_ENABLE`
<span id="ABILITY_ENABLE"></span>
##### **名称:** 技能启用
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__ability` | 技能对象  | [`Ability`](../etype#Ability)


### `ABILITY_ATTR_CHANGED`
<span id="ABILITY_ATTR_CHANGED"></span>
##### **名称:** 技能属性变化
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__ability` | 技能对象  | [`Ability`](../etype#Ability)


### `ABILITY_CD_END`
<span id="ABILITY_CD_END"></span>
##### **名称:** 技能冷却事件
##### **参数**
无


### `OBTAIN_MODIFIER`
<span id="OBTAIN_MODIFIER"></span>
##### **名称:** 获得效果
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__modifier` | 触发的魔法效果  | [`ModifierEntity`](../etype#ModifierEntity)
`__owner_unit` | 效果携带者  | [`Unit`](../etype#Unit)
`__from_unit_id` | 效果施加者  | [`Unit`](../etype#Unit)


### `LOSS_MODIFIER`
<span id="LOSS_MODIFIER"></span>
##### **名称:** 失去效果
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__modifier` | 触发的魔法效果  | [`ModifierEntity`](../etype#ModifierEntity)
`__owner_unit` | 效果携带者  | [`Unit`](../etype#Unit)
`__from_unit_id` | 效果施加者  | [`Unit`](../etype#Unit)


### `MODIFIER_CYCLE_TRIGGER`
<span id="MODIFIER_CYCLE_TRIGGER"></span>
##### **名称:** 循环触发事件
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__modifier` | 触发的魔法效果  | [`ModifierEntity`](../etype#ModifierEntity)
`__owner_unit` | 效果携带者  | [`Unit`](../etype#Unit)
`__from_unit_id` | 效果施加者  | [`Unit`](../etype#Unit)


### `MODIFIER_UPDATE_TIMER`
<span id="MODIFIER_UPDATE_TIMER"></span>
##### **名称:** BUFF更新事件
##### **参数**
无


### `MODIFIER_LAYER_CHANGE`
<span id="MODIFIER_LAYER_CHANGE"></span>
##### **名称:** 效果层数变化事件
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__modifier` | 触发的魔法效果  | [`ModifierEntity`](../etype#ModifierEntity)
`__owner_unit` | 效果携带者  | [`Unit`](../etype#Unit)
`__layer_change_values` | 层数变化值  | [`Int32`](../etype#Int32)
`__from_unit_id` | 效果施加者  | [`Unit`](../etype#Unit)


### `MODIFIER_GET_BEFORE_CREATE`
<span id="MODIFIER_GET_BEFORE_CREATE"></span>
##### **名称:** 魔法效果即将获得事件
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__modifier` | 触发的魔法效果  | [`ModifierEntity`](../etype#ModifierEntity)
`__owner_unit` | 效果携带者  | [`Unit`](../etype#Unit)
`__from_unit_id` | 效果施加者  | [`Unit`](../etype#Unit)


### `MODIFIER_BE_COVERED`
<span id="MODIFIER_BE_COVERED"></span>
##### **名称:** 魔法效果被覆盖事件
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__owner_unit` | 效果携带者  | [`Unit`](../etype#Unit)
`__old_modifier` | 已有的魔法效果  | [`ModifierEntity`](../etype#ModifierEntity)
`__new_modifier` | 新增的魔法效果  | [`ModifierEntity`](../etype#ModifierEntity)


### `MODIFIER_ATTR_CHANGE`
<span id="MODIFIER_ATTR_CHANGE"></span>
##### **名称:** 魔法效果属性变化事件
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__modifier` | 魔法效果  | [`ModifierEntity`](../etype#ModifierEntity)


### `SOURCE_NUMS_CHANGE`
<span id="SOURCE_NUMS_CHANGE"></span>
##### **名称:** 可破坏物资源个数发生变化
##### **参数**
无


### `NAME_CHANGE`
<span id="NAME_CHANGE"></span>
##### **名称:** 可破坏物的名称发生变化
##### **参数**
无


### `SOURCE_NAME_CHANGE`
<span id="SOURCE_NAME_CHANGE"></span>
##### **名称:** 可破坏物资源名称发生变化
##### **参数**
无


### `DEST_DIE`
<span id="DEST_DIE"></span>
##### **名称:** 可破坏物死亡
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__destructible_id` | 死亡的可破坏物  | [`DestructibleID`](../etype#DestructibleID)
`__unit_for_dest` | 凶手单位  | [`Unit`](../etype#Unit)


### `DEST_SOURCE_DRY`
<span id="DEST_SOURCE_DRY"></span>
##### **名称:** 可破坏物被采集枯竭
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__destructible_id` | 资源枯竭的可破坏物  | [`DestructibleID`](../etype#DestructibleID)
`__unit_for_dest` | 采集的单位  | [`Unit`](../etype#Unit)


### `DEST_ATTACKED`
<span id="DEST_ATTACKED"></span>
##### **名称:** 可破坏物被攻击
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__destructible_id` | 被攻击的可破坏物  | [`DestructibleID`](../etype#DestructibleID)
`__unit_for_dest` | 攻击的单位  | [`Unit`](../etype#Unit)


### `DEST_COLLECTED`
<span id="DEST_COLLECTED"></span>
##### **名称:** 可破坏物被采集
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__destructible_id` | 被采集的可破坏物  | [`DestructibleID`](../etype#DestructibleID)
`__unit_for_dest` | 采集的单位  | [`Unit`](../etype#Unit)


### `DEST_AREA_DIE`
<span id="DEST_AREA_DIE"></span>
##### **名称:** 区域内的可破坏物死亡
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__area` | 可破坏物死亡的区域  | [`Area`](../etype#Area)
`__destructible_id` | 死亡的可破坏物  | [`DestructibleID`](../etype#DestructibleID)
`__unit_for_dest` | 杀手单位  | [`Unit`](../etype#Unit)


### `DEST_AREA_DRY`
<span id="DEST_AREA_DRY"></span>
##### **名称:** 区域内的可破坏物被采集枯竭
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__area` | 可破坏物被采集枯竭的区域  | [`Area`](../etype#Area)
`__destructible_id` | 资源枯竭的可破坏物  | [`DestructibleID`](../etype#DestructibleID)
`__unit_for_dest` | 采集单位  | [`Unit`](../etype#Unit)


### `DEST_AREA_ATTACKED`
<span id="DEST_AREA_ATTACKED"></span>
##### **名称:** 区域内的可破坏物被攻击
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__area` | 可破坏物被攻击的区域  | [`Area`](../etype#Area)
`__destructible_id` | 被攻击的可破坏物  | [`DestructibleID`](../etype#DestructibleID)
`__unit_for_dest` | 攻击单位  | [`Unit`](../etype#Unit)


### `DEST_AREA_COLLECTED`
<span id="DEST_AREA_COLLECTED"></span>
##### **名称:** 区域内的可破坏物被采集
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__area` | 可破坏物被采集的区域  | [`Area`](../etype#Area)
`__destructible_id` | 被采集的可破坏物  | [`DestructibleID`](../etype#DestructibleID)
`__unit_for_dest` | 采集单位  | [`Unit`](../etype#Unit)


### `DEST_CREATE_NEW`
<span id="DEST_CREATE_NEW"></span>
##### **名称:** 可破坏物创建
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__destructible_id` | 可破坏物ID  | [`DestructibleID`](../etype#DestructibleID)


### `DEST_DIE_NEW`
<span id="DEST_DIE_NEW"></span>
##### **名称:** 可破坏物死亡
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__destructible_id` | 可破坏物ID  | [`DestructibleID`](../etype#DestructibleID)
`__unit_id_of_dest_killer` | 凶手单位ID  | [`UnitID`](../etype#UnitID)


### `DEST_REVIVE_NEW`
<span id="DEST_REVIVE_NEW"></span>
##### **名称:** 可破坏物复活
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__destructible_id` | 可破坏物ID  | [`DestructibleID`](../etype#DestructibleID)


### `DEST_RES_CNT_CHG_NEW`
<span id="DEST_RES_CNT_CHG_NEW"></span>
##### **名称:** 可破坏物资源量变化
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__destructible_id` | 可破坏物ID  | [`DestructibleID`](../etype#DestructibleID)
`__res_chg_cnt_in_dest_event` | 可破坏物资源变化量  | [`Int64`](../etype#Int64)


### `DEST_COLLECTED_NEW`
<span id="DEST_COLLECTED_NEW"></span>
##### **名称:** 可破坏物被采集
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__destructible_id` | 可破坏物ID  | [`DestructibleID`](../etype#DestructibleID)
`__unit_id_in_dest_event` | 事件中的单位  | [`UnitID`](../etype#UnitID)
`__ability_in_dest_event` | 事件中的技能对象  | [`Ability`](../etype#Ability)
`__role_res_cnt_in_event` | 采集的玩家属性个数  | [`Int64`](../etype#Int64)


### `GET_HURT_NEW`
<span id="GET_HURT_NEW"></span>
##### **名称:** 可破坏物受到伤害
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__destructible_id` | 可破坏物ID  | [`DestructibleID`](../etype#DestructibleID)
`__unit_id_of_hurt_dest` | 事件中的单位  | [`UnitID`](../etype#UnitID)
`__damage_value_of_hurt_dest` | 受到的伤害  | [`Fixed`](../etype#Fixed)


### `SELECT_DEST`
<span id="SELECT_DEST"></span>
##### **名称:** 玩家选中可破坏物
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__role_id` | 玩家ID  | [`RoleID`](../etype#RoleID)
`__destructible_id` | 点击到可破坏物id  | [`DestructibleID`](../etype#DestructibleID)


### `PRODUCE_PROJECTILE`
<span id="PRODUCE_PROJECTILE"></span>
##### **名称:** 投射物产生
##### **参数**
无


### `DEATH_PROJECTILE`
<span id="DEATH_PROJECTILE"></span>
##### **名称:** 投射物死亡
##### **参数**
无


### `START_MOVE_PROJECTILE`
<span id="START_MOVE_PROJECTILE"></span>
##### **名称:** 投射物运动开始
##### **参数**
无


### `REACH_MOVE_TARGET_PROJECTILE`
<span id="REACH_MOVE_TARGET_PROJECTILE"></span>
##### **名称:** 投射物运动目标达成
##### **参数**
无


### `COLLIDE_OBSTACLE_PROJECTILE`
<span id="COLLIDE_OBSTACLE_PROJECTILE"></span>
##### **名称:** 投射物碰撞到障碍
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__unit_id` | 单位ID  | [`UnitID`](../etype#UnitID)


### `UNIT_PRODUCE_PROJECTILE`
<span id="UNIT_PRODUCE_PROJECTILE"></span>
##### **名称:** 给单位创建投射物
##### **参数**
无


### `TRIGGER_COMPONENT_EVENT`
<span id="TRIGGER_COMPONENT_EVENT"></span>
##### **名称:** ui编辑器事件
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__role_id` | 玩家ID  | [`RoleID`](../etype#RoleID)
`__ui_event_name` | ui事件变量名  | [`Str`](../etype#Str)
`__comp_name` | 触发事件控件名称  | [`Str`](../etype#Str)
`__pos` | 触碰坐标  | [`Vector2`](../etype#Vector2)
`__touch_id` | 触碰ID  | [`Int32`](../etype#Int32)


### `GLOBAL_EVENT_TO_UI_WITH_DICT`
<span id="GLOBAL_EVENT_TO_UI_WITH_DICT"></span>
##### **名称:** 全局触发器发送ui事件
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__event_name` | ui事件名  | [`Str`](../etype#Str)
`__args` | 参数  | [`Dict`](../etype#Dict)


### `KEYBOARD_KEY_DOWN_EVENT`
<span id="KEYBOARD_KEY_DOWN_EVENT"></span>
##### **名称:** 键盘按键按下
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__role_id` | 触发按键的玩家ID  | [`RoleID`](../etype#RoleID)
`__current_key` | 当前键盘按键  | [`KeyboardKey`](../etype#KeyboardKey)


### `KEYBOARD_KEY_UP_EVENT`
<span id="KEYBOARD_KEY_UP_EVENT"></span>
##### **名称:** 键盘按键抬起
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__role_id` | 触发按键的玩家ID  | [`RoleID`](../etype#RoleID)
`__current_key` | 当前键盘按键  | [`KeyboardKey`](../etype#KeyboardKey)


### `MOUSE_KEY_DOWN_EVENT`
<span id="MOUSE_KEY_DOWN_EVENT"></span>
##### **名称:** 鼠标按键按下
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__role_id` | 触发按键的玩家ID  | [`RoleID`](../etype#RoleID)
`__current_key` | 当前鼠标按键  | [`MouseKey`](../etype#MouseKey)
`__pointing_world_pos` | 鼠标指向的世界坐标  | [`Point`](../etype#Point)


### `MOUSE_KEY_UP_EVENT`
<span id="MOUSE_KEY_UP_EVENT"></span>
##### **名称:** 鼠标按键抬起
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__role_id` | 触发按键的玩家ID  | [`RoleID`](../etype#RoleID)
`__current_key` | 当前鼠标按键  | [`MouseKey`](../etype#MouseKey)
`__pointing_world_pos` | 鼠标指向的世界坐标  | [`Point`](../etype#Point)


### `SE_KEY_DB_CLICK_EVENT`
<span id="SE_KEY_DB_CLICK_EVENT"></span>
##### **名称:** 鼠标按键双击
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__role_id` | 触发按键的玩家ID  | [`RoleID`](../etype#RoleID)
`__current_key` | 当前鼠标按键  | [`MouseKey`](../etype#MouseKey)
`__pointing_world_pos` | 鼠标指向的世界坐标  | [`Point`](../etype#Point)


### `SE_KEY_DOWN_UNIT_EVENT`
<span id="SE_KEY_DOWN_UNIT_EVENT"></span>
##### **名称:** 鼠标按键按下单位
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__role_id` | 触发按键的玩家ID  | [`RoleID`](../etype#RoleID)
`__current_key` | 当前鼠标按键  | [`MouseKey`](../etype#MouseKey)
`__unit_id` | 当前操作的单位ID  | [`UnitID`](../etype#UnitID)


### `SE_KEY_UP_UNIT_EVENT`
<span id="SE_KEY_UP_UNIT_EVENT"></span>
##### **名称:** 鼠标按键抬起单位
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__role_id` | 触发按键的玩家ID  | [`RoleID`](../etype#RoleID)
`__current_key` | 当前鼠标按键  | [`MouseKey`](../etype#MouseKey)
`__unit_id` | 当前操作的单位ID  | [`UnitID`](../etype#UnitID)


### `SE_KEY_DB_CLICK_UNIT_EVENT`
<span id="SE_KEY_DB_CLICK_UNIT_EVENT"></span>
##### **名称:** 鼠标按键双击单位
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__role_id` | 触发按键的玩家ID  | [`RoleID`](../etype#RoleID)
`__current_key` | 当前鼠标按键  | [`MouseKey`](../etype#MouseKey)
`__unit_id` | 当前操作的单位ID  | [`UnitID`](../etype#UnitID)


### `SE_MOVE_EVENT`
<span id="SE_MOVE_EVENT"></span>
##### **名称:** 鼠标移动事件
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__role_id` | 触发按键的玩家ID  | [`RoleID`](../etype#RoleID)
`__pointing_world_pos` | 鼠标指向的世界坐标  | [`Point`](../etype#Point)
`__tar_x` | 鼠标指向的屏幕坐标X  | [`Int32`](../etype#Int32)
`__tar_y` | 鼠标指向的屏幕坐标Y  | [`Int32`](../etype#Int32)


### `MOUSE_WHEEL_EVENT`
<span id="MOUSE_WHEEL_EVENT"></span>
##### **名称:** 鼠标滚轮事件
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__role_id` | 触发按键的玩家ID  | [`RoleID`](../etype#RoleID)
`__mouse_wheel` | 当前鼠标滚轮  | [`MouseWheel`](../etype#MouseWheel)


### `AL_MOUSE_MOVE_EVENT`
<span id="AL_MOUSE_MOVE_EVENT"></span>
##### **名称:** 本地鼠标移动事件(勿通过该事件进行逻辑操作)
##### **参数**
无


### `UNIT_EVENT_TO_GLOBAL`
<span id="UNIT_EVENT_TO_GLOBAL"></span>
##### **名称:** 单位触发器向全局触发器发送事件
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__event_name` | 事件名  | [`Str`](../etype#Str)
`__point` | 点  | [`Point`](../etype#Point)
`__int1` | 整数1  | [`Int32`](../etype#Int32)
`__float1` | 实数1  | [`Fixed`](../etype#Fixed)
`__bool1` | 布尔1  | [`Bool`](../etype#Bool)
`__str1` | 字符串1  | [`Str`](../etype#Str)
`__unit_id` | 单位id  | [`UnitID`](../etype#UnitID)


### `ABILITY_EVENT_TO_GLOBAL`
<span id="ABILITY_EVENT_TO_GLOBAL"></span>
##### **名称:** 技能触发器向全局触发器发送事件
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__event_name` | 事件名  | [`Str`](../etype#Str)
`__point` | 点  | [`Point`](../etype#Point)
`__int1` | 整数1  | [`Int32`](../etype#Int32)
`__float1` | 实数1  | [`Fixed`](../etype#Fixed)
`__bool1` | 布尔1  | [`Bool`](../etype#Bool)
`__str1` | 字符串1  | [`Str`](../etype#Str)
`__unit_id` | 单位id  | [`UnitID`](../etype#UnitID)


### `MODIFIER_EVENT_TO_GLOBAL`
<span id="MODIFIER_EVENT_TO_GLOBAL"></span>
##### **名称:** 效果触发器向全局触发器发送事件
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__event_name` | 事件名  | [`Str`](../etype#Str)
`__point` | 点  | [`Point`](../etype#Point)
`__int1` | 整数1  | [`Int32`](../etype#Int32)
`__float1` | 实数1  | [`Fixed`](../etype#Fixed)
`__bool1` | 布尔1  | [`Bool`](../etype#Bool)
`__str1` | 字符串1  | [`Str`](../etype#Str)
`__unit_id` | 单位id  | [`UnitID`](../etype#UnitID)


### `PROJECTILE_EVENT_TO_GLOBAL`
<span id="PROJECTILE_EVENT_TO_GLOBAL"></span>
##### **名称:** 投射物触发器向全局触发器发送事件
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__event_name` | 事件名  | [`Str`](../etype#Str)
`__point` | 点  | [`Point`](../etype#Point)
`__int1` | 整数1  | [`Int32`](../etype#Int32)
`__float1` | 实数1  | [`Fixed`](../etype#Fixed)
`__bool1` | 布尔1  | [`Bool`](../etype#Bool)
`__str1` | 字符串1  | [`Str`](../etype#Str)
`__unit_id` | 单位id  | [`UnitID`](../etype#UnitID)


### `ITEM_EVENT_TO_GLOBAL`
<span id="ITEM_EVENT_TO_GLOBAL"></span>
##### **名称:** 物品触发器向全局触发器发送事件
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__event_name` | 事件名  | [`Str`](../etype#Str)
`__point` | 点  | [`Point`](../etype#Point)
`__int1` | 整数1  | [`Int32`](../etype#Int32)
`__float1` | 实数1  | [`Fixed`](../etype#Fixed)
`__bool1` | 布尔1  | [`Bool`](../etype#Bool)
`__str1` | 字符串1  | [`Str`](../etype#Str)
`__unit_id` | 单位id  | [`UnitID`](../etype#UnitID)


### `SELECT_UNIT`
<span id="SELECT_UNIT"></span>
##### **名称:** 玩家选中单位
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__role_id` | 玩家ID  | [`RoleID`](../etype#RoleID)
`__unit_id` | 点击到单位id  | [`UnitID`](../etype#UnitID)


### `HIGH_LIGHT_UNIT_CHANGE`
<span id="HIGH_LIGHT_UNIT_CHANGE"></span>
##### **名称:** 玩家控制的高亮单位
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__role_id` | 玩家ID  | [`RoleID`](../etype#RoleID)
`__high_light_unit_id` | 高亮单位id  | [`HighLightUnitID`](../etype#HighLightUnitID)


### `SELECT_ITEM`
<span id="SELECT_ITEM"></span>
##### **名称:** 玩家选中物品
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__role_id` | 玩家ID  | [`RoleID`](../etype#RoleID)
`__item_id` | 点击到物品id  | [`ItemID`](../etype#ItemID)


### `DOUBLE_CLICK_ITEM`
<span id="DOUBLE_CLICK_ITEM"></span>
##### **名称:** 玩家双击选中物品
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__role_id` | 玩家ID  | [`RoleID`](../etype#RoleID)
`__item_id` | 双击到物品id  | [`ItemID`](../etype#ItemID)


### `OPEN_SHOP_PANEL`
<span id="OPEN_SHOP_PANEL"></span>
##### **名称:** 打开商店界面
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__role_id` | 玩家ID  | [`RoleID`](../etype#RoleID)
`__unit_id` | 商店单位ID  | [`UnitID`](../etype#UnitID)


### `DOUBLE_CLICK_DEST`
<span id="DOUBLE_CLICK_DEST"></span>
##### **名称:** 玩家双击选中可破坏物
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__role_id` | 玩家ID  | [`RoleID`](../etype#RoleID)
`__destructible_id` | 双击到可破坏物id  | [`DestructibleID`](../etype#DestructibleID)


### `SELECT_UNIT_GROUP`
<span id="SELECT_UNIT_GROUP"></span>
##### **名称:** 玩家选中单位组
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__role_id` | 玩家ID  | [`RoleID`](../etype#RoleID)
`__unit_group_id_list` | 框选到单位组id列表  | [`UnitGroup`](../etype#UnitGroup)
`__team_id` | 队伍编号  | [`Int32`](../etype#Int32)


### `START_SKILL_POINTER`
<span id="START_SKILL_POINTER"></span>
##### **名称:** 打开技能指示器
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__role_id` | 玩家ID  | [`RoleID`](../etype#RoleID)
`__unit_id` | 释放单位id  | [`UnitID`](../etype#UnitID)
`__ability_type` | 技能类型  | [`AbilityType`](../etype#AbilityType)
`__ability_index` | 技能Index  | [`AbilityIndex`](../etype#AbilityIndex)
`__ability_seq` | 技能Seq  | [`AbilitySeq`](../etype#AbilitySeq)


### `STOP_SKILL_POINTER`
<span id="STOP_SKILL_POINTER"></span>
##### **名称:** 关闭技能指示器
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__role_id` | 玩家ID  | [`RoleID`](../etype#RoleID)
`__unit_id` | 释放单位id  | [`UnitID`](../etype#UnitID)
`__ability_type` | 技能类型  | [`AbilityType`](../etype#AbilityType)
`__ability_index` | 技能Index  | [`AbilityIndex`](../etype#AbilityIndex)
`__ability_seq` | 技能Seq  | [`AbilitySeq`](../etype#AbilitySeq)


### `RESIZE_SKILL_POINTER`
<span id="RESIZE_SKILL_POINTER"></span>
##### **名称:** 缩放技能指示器范围圈
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__role_id` | 玩家ID  | [`RoleID`](../etype#RoleID)
`__unit_id` | 释放单位id  | [`UnitID`](../etype#UnitID)
`__ability_type` | 技能类型  | [`AbilityType`](../etype#AbilityType)
`__ability_index` | 技能Index  | [`AbilityIndex`](../etype#AbilityIndex)
`__ability_seq` | 技能Seq  | [`AbilitySeq`](../etype#AbilitySeq)


### `SET_ABILITY_SECTOR_RADIUS`
<span id="SET_ABILITY_SECTOR_RADIUS"></span>
##### **名称:** 设置扇形指示器半径
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__ability_seq` | 技能Seq  | [`AbilitySeq`](../etype#AbilitySeq)


### `SET_ABILITY_SECTOR_ANGLE`
<span id="SET_ABILITY_SECTOR_ANGLE"></span>
##### **名称:** 设置扇形指示器角度
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__ability_seq` | 技能Seq  | [`AbilitySeq`](../etype#AbilitySeq)


### `SET_ABILITY_ARROW_LENGTH`
<span id="SET_ABILITY_ARROW_LENGTH"></span>
##### **名称:** 设置箭头/多段指示器长度
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__ability_seq` | 技能Seq  | [`AbilitySeq`](../etype#AbilitySeq)


### `SET_ABILITY_ARROW_WIDTH`
<span id="SET_ABILITY_ARROW_WIDTH"></span>
##### **名称:** 设置箭头/多段指示器宽度
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__ability_seq` | 技能Seq  | [`AbilitySeq`](../etype#AbilitySeq)


### `SET_ABILITY_CIRCLE_RADIUS`
<span id="SET_ABILITY_CIRCLE_RADIUS"></span>
##### **名称:** 设置圆形指示器半径
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__ability_seq` | 技能Seq  | [`AbilitySeq`](../etype#AbilitySeq)


### `SET_ABILITY_POINTER_TYPE`
<span id="SET_ABILITY_POINTER_TYPE"></span>
##### **名称:** 设置技能指示器类型
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__ability_seq` | 技能Seq  | [`AbilitySeq`](../etype#AbilitySeq)
`__skill_pointer_type` | 技能指示器类型  | [`SkillPointerType`](../etype#SkillPointerType)


### `TOUCH_BEGIN`
<span id="TOUCH_BEGIN"></span>
##### **名称:** 触碰（鼠标）开始事件
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__touch_id` | 触碰(鼠标)id  | [`Int32`](../etype#Int32)
`__pos` | 触碰(鼠标)坐标  | [`Vector2`](../etype#Vector2)


### `TOUCH_MOVE`
<span id="TOUCH_MOVE"></span>
##### **名称:** 触碰（鼠标）移动事件
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__touch_id` | 触碰(鼠标)id  | [`Int32`](../etype#Int32)
`__pos` | 触碰(鼠标)坐标  | [`Vector2`](../etype#Vector2)


### `TOUCH_END`
<span id="TOUCH_END"></span>
##### **名称:** 触碰（鼠标）结束事件
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__touch_id` | 触碰(鼠标)id  | [`Int32`](../etype#Int32)
`__pos` | 触碰(鼠标)坐标  | [`Vector2`](../etype#Vector2)


### `TOP_TOUCH_END`
<span id="TOP_TOUCH_END"></span>
##### **名称:** 最底层的触摸结束事件
##### **参数**
无


### `K_LIST_INFO_CHANGE`
<span id="K_LIST_INFO_CHANGE"></span>
##### **名称:** 排位变更事件
##### **参数**
无


### `UNIT_ADD_ITEM`
<span id="UNIT_ADD_ITEM"></span>
##### **名称:** 单位获得物品
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__unit_id` | 获得该物品的单位id  | [`UnitID`](../etype#UnitID)
`__item_id` | 物品id  | [`ItemID`](../etype#ItemID)
`__item_no` | 物品编号  | [`ItemKey`](../etype#ItemKey)


### `UNIT_ADD_ITEM_FOR_COMPOSE`
<span id="UNIT_ADD_ITEM_FOR_COMPOSE"></span>
##### **名称:** 单位添加物品用于物品合成事件的判断
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__unit_id` | 获得该物品的单位id  | [`UnitID`](../etype#UnitID)
`__item_id` | 物品id  | [`ItemID`](../etype#ItemID)
`__item_no` | 物品编号  | [`ItemKey`](../etype#ItemKey)


### `UNIT_ADD_ITEM_TO_BAR`
<span id="UNIT_ADD_ITEM_TO_BAR"></span>
##### **名称:** 单位获得物品到物品栏
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__unit_id` | 获得该物品的单位id  | [`UnitID`](../etype#UnitID)
`__item_id` | 物品id  | [`ItemID`](../etype#ItemID)
`__item_no` | 物品编号  | [`ItemKey`](../etype#ItemKey)


### `UNIT_ADD_ITEM_TO_PKG`
<span id="UNIT_ADD_ITEM_TO_PKG"></span>
##### **名称:** 单位获得物品到背包栏
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__unit_id` | 获得该物品的单位id  | [`UnitID`](../etype#UnitID)
`__item_id` | 物品id  | [`ItemID`](../etype#ItemID)
`__item_no` | 物品编号  | [`ItemKey`](../etype#ItemKey)


### `UNIT_REMOVE_ITEM`
<span id="UNIT_REMOVE_ITEM"></span>
##### **名称:** 单位失去物品
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__unit_id` | 失去该物品的单位id  | [`UnitID`](../etype#UnitID)
`__item_id` | 物品id  | [`ItemID`](../etype#ItemID)
`__item_no` | 物品编号  | [`ItemKey`](../etype#ItemKey)


### `UNIT_REMOVE_ITEM_FROM_BAR`
<span id="UNIT_REMOVE_ITEM_FROM_BAR"></span>
##### **名称:** 单位物品从物品栏离开
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__unit_id` | 失去该物品的单位id  | [`UnitID`](../etype#UnitID)
`__item_id` | 物品id  | [`ItemID`](../etype#ItemID)
`__item_no` | 物品编号  | [`ItemKey`](../etype#ItemKey)


### `UNIT_REMOVE_ITEM_FROM_PKG`
<span id="UNIT_REMOVE_ITEM_FROM_PKG"></span>
##### **名称:** 单位物品从背包栏离开
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__unit_id` | 失去该物品的单位id  | [`UnitID`](../etype#UnitID)
`__item_id` | 物品id  | [`ItemID`](../etype#ItemID)
`__item_no` | 物品编号  | [`ItemKey`](../etype#ItemKey)


### `UNIT_USE_ITEM`
<span id="UNIT_USE_ITEM"></span>
##### **名称:** 单位使用物品
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__unit_id` | 使用该物品的单位id  | [`UnitID`](../etype#UnitID)
`__item_id` | 物品id  | [`ItemID`](../etype#ItemID)
`__item_no` | 物品编号  | [`ItemKey`](../etype#ItemKey)


### `UNIT_USE_ITEM_END`
<span id="UNIT_USE_ITEM_END"></span>
##### **名称:** 单位使用物品后
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__item_no` | 物品编号  | [`ItemKey`](../etype#ItemKey)


### `UNIT_START_NAV_EVENT`
<span id="UNIT_START_NAV_EVENT"></span>
##### **名称:** 单位开始寻路时
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__unit_id` | 单位id  | [`UnitID`](../etype#UnitID)


### `UNIT_END_NAV_EVENT`
<span id="UNIT_END_NAV_EVENT"></span>
##### **名称:** 单位结束寻路时
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__unit_id` | 单位id  | [`UnitID`](../etype#UnitID)


### `UNIT_BAG_REFRESH`
<span id="UNIT_BAG_REFRESH"></span>
##### **名称:** 背包刷新
##### **参数**
无


### `ITEM_STACK_CHANGED`
<span id="ITEM_STACK_CHANGED"></span>
##### **名称:** 物品层数变化
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__unit_id` | 单位id  | [`ItemID`](../etype#ItemID)
`__item_id` | 物品id  | [`ItemID`](../etype#ItemID)
`__item_no` | 物品编号  | [`ItemKey`](../etype#ItemKey)
`__delta_cnt` | 变化值  | [`Int32`](../etype#Int32)


### `ITEM_CHARGE_CHANGED`
<span id="ITEM_CHARGE_CHANGED"></span>
##### **名称:** 物品充能变化
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__unit_id` | 单位id  | [`ItemID`](../etype#ItemID)
`__item_id` | 物品id  | [`ItemID`](../etype#ItemID)
`__item_no` | 物品编号  | [`ItemKey`](../etype#ItemKey)
`__delta_cnt` | 变化值  | [`Int32`](../etype#Int32)


### `ITEM_ON_CREATE`
<span id="ITEM_ON_CREATE"></span>
##### **名称:** 物品创建
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__item` | 被创建的物品  | [`Item`](../etype#Item)
`__item_id` | 物品id  | [`ItemID`](../etype#ItemID)


### `ITEM_ON_DESTROY`
<span id="ITEM_ON_DESTROY"></span>
##### **名称:** 物品销毁
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__item_id` | 销毁的物品  | [`ItemKey`](../etype#ItemKey)


### `ITEM_ENTITY_ON_DESTROY`
<span id="ITEM_ENTITY_ON_DESTROY"></span>
##### **名称:** 物品实体销毁
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__item_unit_id` | 物品实体id  | [`ItemID`](../etype#ItemID)
`__item_id` | 物品id  | [`ItemID`](../etype#ItemID)


### `ITEM_SOLD`
<span id="ITEM_SOLD"></span>
##### **名称:** 出售物品
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__unit` | 购买者  | [`Unit`](../etype#Unit)
`__unit2` | 贩卖者  | [`Unit`](../etype#Unit)
`__item` | 被售出的物品  | [`Item`](../etype#Item)


### `ITEM_BROKEN`
<span id="ITEM_BROKEN"></span>
##### **名称:** 破坏物品
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__item` | 被破坏的物品  | [`Item`](../etype#Item)
`__unit` | 破坏物品的单位  | [`Unit`](../etype#Unit)
`__item_id` | 物品id  | [`ItemID`](../etype#ItemID)


### `ITEM_NAME_CHANGED`
<span id="ITEM_NAME_CHANGED"></span>
##### **名称:** 物品名称改变
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__item` | 改变名称的物体  | [`Item`](../etype#Item)
`__name` | 改变后的名称  | [`Str`](../etype#Str)


### `ITEM_DESC_CHANGED`
<span id="ITEM_DESC_CHANGED"></span>
##### **名称:** 破坏物品
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__item` | 改变描述的物体  | [`Item`](../etype#Item)
`__name` | 改变后的描述  | [`Str`](../etype#Str)


### `ITEM_CREATE_ON_DEST_COLLECTED`
<span id="ITEM_CREATE_ON_DEST_COLLECTED"></span>
##### **名称:** 物品被采集创建
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__item_id` | 事件中的物品  | [`Item`](../etype#Item)
`__destructible_id` | 事件中的可破坏物  | [`Destructible`](../etype#Destructible)
`__unit_id` | 采集可破坏物事件中的单位  | [`Unit`](../etype#Unit)
`__ability` | 采集可破坏物的捷能  | [`Ability`](../etype#Ability)


### `ATTACK_MOVE_CMD`
<span id="ATTACK_MOVE_CMD"></span>
##### **名称:** 左键A地板
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__unit` | 指定单位  | [`Unit`](../etype#Unit)
`__tar_x` | 点击位置X坐标  | [`Fixed`](../etype#Fixed)
`__tar_y` | 点击位置Y坐标  | [`Fixed`](../etype#Fixed)


### `SELL_ITEM_CMD`
<span id="SELL_ITEM_CMD"></span>
##### **名称:** 出售物品
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__shop_unit_id` | 商店单位ID  | [`UnitID`](../etype#UnitID)
`__item_id` | 商品  | [`ItemID`](../etype#ItemID)


### `AI_RELEASE_SKILL_CMD`
<span id="AI_RELEASE_SKILL_CMD"></span>
##### **名称:** 释放技能
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__unit` | 指定单位  | [`Unit`](../etype#Unit)
`__ability_type` | 技能类型  | [`AbilityType`](../etype#AbilityType)
`__ability_index` | 技能Index  | [`AbilityIndex`](../etype#AbilityIndex)
`__ability_seq` | 技能SEQ  | [`AbilitySeq`](../etype#AbilitySeq)
`__target_item` | 释放技能参数  | [`Dict`](../etype#Dict)


### `PATROL_CMD`
<span id="PATROL_CMD"></span>
##### **名称:** 巡逻
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__unit` | 指定单位  | [`Unit`](../etype#Unit)
`__tar_x` | 点击位置X坐标  | [`Fixed`](../etype#Fixed)
`__tar_y` | 点击位置Y坐标  | [`Fixed`](../etype#Fixed)


### `MOVE_UNIT_TO_TARGET_CMD`
<span id="MOVE_UNIT_TO_TARGET_CMD"></span>
##### **名称:** 寻路到位置
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__unit` | 指定单位  | [`Unit`](../etype#Unit)
`__tar_x` | 点击位置X坐标  | [`Fixed`](../etype#Fixed)
`__tar_y` | 点击位置Y坐标  | [`Fixed`](../etype#Fixed)


### `CATCH_FRAME_FINISHED`
<span id="CATCH_FRAME_FINISHED"></span>
##### **名称:** 追帧结束事件
##### **参数**
无


### `MOVER_FINISH`
<span id="MOVER_FINISH"></span>
##### **名称:** 运动器结束
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__mover_unit_id` | 运动器所属单位ID  | [`UnitID`](../etype#UnitID)


### `MOVER_INTERRUPT`
<span id="MOVER_INTERRUPT"></span>
##### **名称:** 运动器打断
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__mover_unit_id` | 运动器所属单位ID  | [`UnitID`](../etype#UnitID)


### `MOVER_REMOVED`
<span id="MOVER_REMOVED"></span>
##### **名称:** 运动器移除
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__mover_unit_id` | 运动器所属单位ID  | [`UnitID`](../etype#UnitID)


### `MOVER_UNIT_COLLISION`
<span id="MOVER_UNIT_COLLISION"></span>
##### **名称:** 运动器单位碰撞
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__mover_unit_id` | 运动器所属单位ID  | [`UnitID`](../etype#UnitID)
`__collide_unit_id` | 碰撞单位ID  | [`UnitID`](../etype#UnitID)


### `MOVER_UNIT_COLLISION_ENTER`
<span id="MOVER_UNIT_COLLISION_ENTER"></span>
##### **名称:** 运动器单位碰撞
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__mover_unit_id` | 运动器所属单位ID  | [`UnitID`](../etype#UnitID)
`__collide_unit_id` | 碰撞单位ID  | [`UnitID`](../etype#UnitID)


### `MOVER_UNIT_COLLISION_LEAVE`
<span id="MOVER_UNIT_COLLISION_LEAVE"></span>
##### **名称:** 运动器单位碰撞结束
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__mover_unit_id` | 运动器所属单位ID  | [`UnitID`](../etype#UnitID)
`__collide_unit_id` | 碰撞单位ID  | [`UnitID`](../etype#UnitID)


### `MOVER_TERRAIN_COLLISION`
<span id="MOVER_TERRAIN_COLLISION"></span>
##### **名称:** 运动器地形碰撞
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__mover_unit_id` | 运动器所属单位ID  | [`UnitID`](../etype#UnitID)


### `CHAT_SEND_GM`
<span id="CHAT_SEND_GM"></span>
##### **名称:** 聊天中发送指令
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__str1` | 指令字符串  | [`Str`](../etype#Str)
`__role_id` | 玩家id  | [`RoleID`](../etype#RoleID)


### `CUSTOM_EVENT`
<span id="CUSTOM_EVENT"></span>
##### **名称:** 触发器自定义事件
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__c_param_1` | 自定义参数1  | [`Int32`](../etype#Int32)
`__c_param_2` | 自定义参数2  | [`Int32`](../etype#Int32)
`__c_param_3` | 自定义参数3  | [`Int32`](../etype#Int32)
`__c_param_4` | 自定义参数4  | [`Int32`](../etype#Int32)
`__c_param_5` | 自定义参数5  | [`Int32`](../etype#Int32)


### `EVENT_CUSTOM`
<span id="EVENT_CUSTOM"></span>
##### **名称:** 自定义事件
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__c_param_1` | 事件参数  | [`Int32`](../etype#Int32)
`__c_param_dict` | 自定义参数列表  | [`Dict`](../etype#Dict)


### `VX_EVENT`
<span id="VX_EVENT"></span>
##### **名称:** 界面控件动效播放事件
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__ui_vx_handler` | 动销回调句柄  | [`Str`](../etype#Str)
`__comp_name` | 控件uid  | [`Str`](../etype#Str)
`__int1` | 动效id  | [`Int32`](../etype#Int32)


### `UI_PREFAB_CREATE_EVENT`
<span id="UI_PREFAB_CREATE_EVENT"></span>
##### **名称:** 界面模块被创建
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__role_id` | 玩家ID  | [`RoleID`](../etype#RoleID)
`__ui_prefab` | ui模块id  | [`Str`](../etype#Str)
`__ui_prefab_ins` | 创建出的实例控件  | [`UIPrefabIns`](../etype#UIPrefabIns)


### `UI_PREFAB_DEL_EVENT`
<span id="UI_PREFAB_DEL_EVENT"></span>
##### **名称:** 界面模块被销毁
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__role_id` | 玩家ID  | [`RoleID`](../etype#RoleID)
`__ui_prefab` | ui模块id  | [`Str`](../etype#Str)
`__ui_prefab_ins` | 销毁的模块实例控件  | [`UIPrefabIns`](../etype#UIPrefabIns)


### `E_INPUT_FIELD_EDIT_MSG`
<span id="E_INPUT_FIELD_EDIT_MSG"></span>
##### **名称:** 输入框控件玩家输入
##### **参数**
参数名        | 描述         | 类型
:----------- | :----------- | :-----------
`__role_id` | 玩家ID  | [`RoleID`](../etype#RoleID)
`__msg` | 字符串  | [`Str`](../etype#Str)

