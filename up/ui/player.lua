local player = require 'up.player'
player.ui = {}

function player:ui_show(name)
    GameAPI.show_ui_comp_animation(self._base,name,'')
end

function player:ui_hide(name)
    GameAPI.hide_ui_comp_animation(self._base,name,'')
end

function player:ui_set_hotkey(name,key)
    if KEY[key] then key = KEY[key] end
    GameAPI.set_btn_short_cut(self._base,name,key)
end

function player:ui_set_prefab_ui_visible(flag)
    GameAPI.set_prefab_ui_visible(self._base,flag)
end

function player:ui_set_position(name,position)
    GameAPI.set_ui_comp_pos(self._base,name,position[1],position[2])
end

function player:ui_set_size(name,size)
    GameAPI.set_ui_comp_size(self._base,name,size[1],size[2])
end

function player:ui_set_scale(name,scale)
    GameAPI.set_ui_comp_scale(self._base,name,scale[1],scale[2])
end

function player:ui_active_skill(name,bool)
    GameAPI.set_skill_btn_action_effect(self._base, name,bool) 
end

function player:ui_set_z_order(name,z_order)
    GameAPI.set_ui_comp_z_order(self._base,name,z_order)
end

function player:ui_set_image(name,image_id)
    GameAPI.set_ui_comp_image(self._base,name,image_id)
end

function player:ui_set_progress(name,max,cur)
    GameAPI.set_progress_bar_max_value(self._base,name,max)
    GameAPI.set_progress_bar_current_value(self._base,name,cur)
end

function player:ui_set_max_value(name,max_value)
    GameAPI.set_progress_bar_max_value(self._base,name,max_value)
end

function player:ui_set_cur_value(name,current_value)
    GameAPI.set_progress_bar_current_value(self._base,name,current_value)
end

function player:ui_set_enable(name,enable)
    GameAPI.set_ui_comp_enable(self._base,name,enable)
end

function player:ui_set_text(name,txt)
    GameAPI.set_ui_comp_text(self._base,name,tostring(txt))
end

function player:ui_set_font_size(name,font_size)
    GameAPI.set_ui_comp_font_size(self._base,name,font_size)
end

--设置透明度
function player:ui_set_opacity(name,opacity)
    GameAPI.set_ui_comp_opacity(self._base,name,opacity)
end

function player:ui_unbind_skill(name)
    GameAPI.cancel_bind_skill(self._base,name)
end

function player:ui_bind_skill(name,skill)
    GameAPI.set_skill_on_ui_comp(self._base,skill._base,name)
end

function player:ui_bind_buff(name,unit)
    GameAPI.set_buff_on_ui_comp(self._base,unit._base,name)
end

function player:ui_bind_item(name,item)
    GameAPI.set_skill_on_ui_comp(self._base,item._base,name)
end

function player:ui_bind_item_tbl(name,unit,slot_type,slot)
    GameAPI.set_ui_comp_unit_slot(self._base,name,unit._base,SlotType[slot_type],slot)
end

function player:ui_set_ui_comp_slot(name,slot_type,slot)
    GameAPI.set_ui_comp_slot(self._base,name,SlotType[slot_type],slot)
end

function player:ui_set_model(name,model)
    GameAPI.set_ui_model_id(self._base,name,model)
end

function player:set_ui_comp_bind_attr_text(name,attr)
    GameAPI.set_ui_comp_bind_attr(self._base, name, 'text_bind', attr)
end

function player:set_ui_comp_bind_attr_max_value(name,attr)
    GameAPI.set_ui_comp_bind_attr(self._base, name, 'max_value_bind', attr)
end

function player:set_ui_comp_bind_attr_cur_value(name,attr)
    GameAPI.set_ui_comp_bind_attr(self._base, name, 'current_value_bind', attr)
end

function player:play_ui_comp_anim(id,speed,is_loop)
    gameapi.play_ui_comp_anim(self._base, id, speed, is_loop)
end
