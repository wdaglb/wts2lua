
up.sound = function(data)
    if not data.player then
        data.player = gameapi.get_all_role_ids()
    else
        data.player = data.player._base
    end
    if data.target.type == 'point' then
        gameapi.play_3d_sound_for_player(data.player, data.id, data.target._base, Fix32(0.0), 0, 0, true)
    end
    if data.target.type == 'unit' then
        gameapi.follow_object_play_3d_sound_for_player(data.player, data.id, data.target._base, 0, 0, true)
    end
end
