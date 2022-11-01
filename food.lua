
-- ambion/food.lua

minetest.register_craftitem("ambion:ambion_apple",{
description = "Ambion Apple",
inventory_image = "ambion_apple.png",
wield_image = "ambion_apple.png",
on_use = minetest.item_eat(30),
groups = {food_ambion = 1, fleshy = 3, dig_immediate = 3, flammable = 2}
})

minetest.register_craftitem("ambion:ambion_potion",{
description = "Ambion Potion",
inventory_image = "ambion_potion.png",
on_use = function(itemstack, player, pointed_thing)
    if player then
        local gr = player:get_armor_groups()
        if gr.immortal then
            minetest.chat_send_player(player:get_player_name(),"ambion: You already invincible!")
        return end
        player:set_armor_groups({immortal=1})
        itemstack:take_item()
        minetest.chat_send_player(player:get_player_name(),"ambion: Invincibility activated for 1 minute!")
        minetest.after(60,function()
            player:set_armor_groups(gr)
            minetest.chat_send_player(player:get_player_name(),"ambion: Invincibility timed out!")
        end)
    end
    return itemstack
end})


