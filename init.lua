
-- Ambione Mod

local ambion = minetest.get_modpath("ambion")

dofile(ambion.."/tools.lua")
dofile(ambion.."/food.lua")
dofile(ambion.."/craft.lua")


minetest.register_craftitem("ambion:ambion",{
description = "Ambion",
inventory_image = "ambion.png",
wield_image = "ambion.png",
groups = {}
})

minetest.register_node("ambion:ambion_block", {
    description = "Ambion Block",
    tiles = {"ambion_block.png"},
    paramtype = "light",
    light_source = 8,
    drop = "ambion:ambion_block",
    groups = {choppy = 1, oddly_breakable_by_hand = 1, flammable = 2},
})

minetest.register_node("ambion:ambion_ore", {
    description = "Ambion ore",
    tiles = {"ambion_ore.png"},
    paramtype = "light",
    light_source = 8,
    drop = "ambion:ambion_lump",
    groups = {choppy = 1, oddly_breakable_by_hand = 1, flammable = 2},
})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "ambion:ambion_ore",
		wherein        = "default:stone",
		clust_scarcity = 36 * 36 * 36,
		clust_num_ores = 3,
		clust_size     = 2,
		y_max          = 31000,
		y_min          = 1025,
	})
	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "ambion:ambion_ore",
		wherein        = "default:stone",
		clust_scarcity = 36 * 36 * 36,
		clust_num_ores = 3,
		clust_size     = 2,
		y_max          = -1024,
		y_min          = -31000,
	})


minetest.register_craftitem("ambion:ambion_lump",{
description = "Ambion lump",
inventory_image = "ambion_lump.png",
wield_image = "ambion_lump.png",
groups = {}
})


