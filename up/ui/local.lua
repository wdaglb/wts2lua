local ui = {}
up.ui = ui
local player = up.get_localplayer()._base

--根据路径获取UI
function up.get_ui(path, _player)
    gameapi.get_comp_by_absolute_path(_player._base or player, path)
end

function ui:show(name)
    GameAPI.show_ui_comp_animation(player,name,'')
end

function ui:hide(name)
    GameAPI.hide_ui_comp_animation(player,name,'')
end

function ui:set_hotkey(name,key)
    if KEY[key] then key = KEY[key] end
    GameAPI.set_btn_short_cut(player,name,key)
end

function ui:set_prefab_ui_visible(flag)
    GameAPI.set_prefab_ui_visible(player,flag)
end

function ui:set_position(name,position)
    GameAPI.set_ui_comp_pos(player,name,position[1],position[2])
end

function ui:set_size(name,size)
    GameAPI.set_ui_comp_size(player,name,size[1],size[2])
end

function ui:set_scale(name,scale)
    if type(scale) == 'table' then
        GameAPI.set_ui_comp_scale(player,name,Fix32(scale[1]),Fix32(scale[2]))
    else
        GameAPI.set_ui_comp_scale(player,name,Fix32(scale),Fix32(scale))
    end
end

function ui:active_skill(name,bool)
    GameAPI.set_skill_btn_action_effect(player, name,bool) 
end

function ui:set_z_order(name,z_order)
    GameAPI.set_ui_comp_z_order(player,name,z_order)
end

function ui:set_image(name,image_id)
    GameAPI.set_ui_comp_image(player,name,image_id)
end

function ui:set_progress(name,max,cur)
    GameAPI.set_progress_bar_max_value(player,name,max)
    GameAPI.set_progress_bar_current_value(player,name,cur)
end

function ui:set_max_value(name,max_value)
    GameAPI.set_progress_bar_max_value(player,name,max_value)
end

function ui:set_cur_value(name,current_value)
    GameAPI.set_progress_bar_current_value(player,name,current_value)
end


function ui:set_enable(name,enable)
    GameAPI.set_ui_comp_enable(player,name,enable)
end

function ui:set_text(name,txt)
    GameAPI.set_ui_comp_text(player,name,tostring(txt))
end

function ui:set_font_size(name,font_size)
    GameAPI.set_ui_comp_font_size(player,name,font_size)
end

--设置透明度
function ui:set_opacity(name,opacity)
    GameAPI.set_ui_comp_opacity(player,name,opacity)
end

function ui:unbind_skill(name)
    GameAPI.cancel_bind_skill(player,name)
end

function ui:bind_skill(name,skill)
    GameAPI.set_skill_on_ui_comp(player,skill._base,name)
end

function ui:bind_buff(name,unit)
    GameAPI.set_buff_on_ui_comp(player,unit._base,name)
end

function ui:bind_item(name,item)
    GameAPI.set_skill_on_ui_comp(player,item._base,name)
end

function ui:bind_item_tbl(name,unit,slot_type,slot)
    GameAPI.set_ui_comp_unit_slot(player,name,unit._base,SlotType[slot_type],slot)
end

function ui:set_ui_comp_slot(name,slot_type,slot)
    GameAPI.set_ui_comp_slot(player,name,SlotType[slot_type],slot)
end

function ui:set_model(name,model)
    GameAPI.set_ui_model_id(player,name,model)
end