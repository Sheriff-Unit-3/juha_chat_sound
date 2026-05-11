-- juha_chat_sound | juha (CraftPlay777)
-- reproduce un sonido al enviarse un mensaje al chat

minetest.register_on_chat_message(function(name, message)
    for _, player in ipairs(minetest.get_connected_players()) do
        minetest.sound_play("juha_chat_sound_msg", {
            to_player = player:get_player_name(),
            gain = 0.5,
        })
    end
end)