minetest.register_craftitem("ambion:ambion",{
description = "Ambion",
inventory_image = "ambion.png",
wield_image = "ambion.png",
groups = {}
})
minetest.register_craft({
	output = "ambion:ambion 9",
	recipe = {
		{"ambion:ambion_block",}	
	},
})
minetest.register_craft({
	output = "ambion:ambion",
	recipe = {
		{"default:diamond","default:diamond","default:diamond"},
		{"default:diamond","ambion:ambion_lump","default:diamond"},
		{"default:diamond","default:diamond","default:diamond"}
	}
})

minetest.register_node("ambion:ambion_block", {
    description = "Ambion block",
    tiles = {"ambion_block.png"}
    paramtype = "light",
    light_source = 13,
    groups = {choppy = 3, oddly_breakable_by_hand = 1, flammable = 2},
})
minetest.register_craft({
    output = "ambion:ambion_block",
    recipe = {
        {"ambion:ambion","ambion:ambion","ambion:ambion"},
        {"ambion:ambion","ambion:ambion","ambion:ambion"},
        {"ambion:ambion","ambion:ambion","ambion:ambion"},
    }
})

minetest.register_node("ambion:ambion_ore", {
    description = "Ambion ore",
    tiles = {"ambion_ore.png"},
    paramtype = "light",
    light_source = 14,
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
minetest.register_craft({
    output = "ambion:ambion_ore 4",
    recipe = {
        {"ambion:ambion_lump","ambion:ambion_lump"},
        {"ambion:ambion_lump","ambion:ambion_lump"}
    }
})

minetest.register_craftitem("ambion:ambion_lump",{
description = "Ambion lump",
inventory_image = "ambion_lump.png",
wield_image = "ambion_lump.png",
groups = {}
})
minetest.register_craft({
	output = "ambion:ambion_lump",
	recipe = {
		{"ambion:ambion_ore",}	
	},
})

minetest.register_tool("ambion:ambion_sword", {
	description = ("Ambion sword"),
	inventory_image = "ambion_sword.png",
	tool_capabilities = {
		full_punch_interval = 0.80,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=1.0, [2]=0.40, [3]=0.10}, uses=67, maxlevel=4},
		},
		damage_groups = {fleshy=30},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {sword = 1}
})
minetest.register_craft({
    output = "ambion:ambion_sword",
    recipe = {
        {"ambion:ambion"},
        {"ambion:ambion"},
        {"ambion:ambion_lump"},
    }
})

minetest.register_tool("ambion:ambion_axe", {
	description = ("Ambion axe"),
	inventory_image = "ambion_axe.png",
	tool_capabilities = {
		full_punch_interval = 0.80,
		max_drop_level=1,
		groupcaps={
			choppy={times={[1]=1.10, [2]=0.50, [3]=0.30}, uses=50, maxlevel=4},
		},
		damage_groups = {fleshy=10},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {axe = 1}
})
minetest.register_craft({
    output = "ambion:ambion_axe",
    recipe = {
        {"ambion:ambion","ambion:ambion",""},
        {"ambion:ambion","ambion:ambion_lump",""},
        {"","ambion:ambion_lump",""},
    }
})

minetest.register_tool("ambion:ambion_pick", {
	description = ("Ambion pickaxe"),
	inventory_image = "ambion_pick.png",
	tool_capabilities = {
		full_punch_interval = 0,9,
		max_drop_level=3,
		groupcaps={
			cracky = {times={[1]=0.98, [2]=0.60, [3]=0.30}, uses=40, maxlevel=4},
		},
		damage_groups = {fleshy=6},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {pickaxe = 1}
})
minetest.register_craft({
    output = "ambion:ambion_pick",
    recipe = {
        {"ambion:ambion","ambion:ambion","ambion:ambion"},
        {"","ambion:ambion_lump",""},
        {"","ambion:ambion_lump",""},
        } 
})

minetest.register_tool("ambion:ambion_shovel", {
	description = ("Ambion shovel"),
	inventory_image = "ambion_shovel.png",
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={
			crumbly = {times={[1]=1.20, [2]=0.50, [3]=0.30}, uses=30, maxlevel=3},
		},
		damage_groups = {fleshy=6},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {shovel = 1}
})
minetest.register_craft({
    output = "ambion:ambion_shovel",
    recipe = {
        {"ambion:ambion"},
        {"ambion:ambion_lump"},
        {"ambion:ambion_lump"},
    }
})

minetest.register_tool("ambion:ambion_multitol", {
	description = ("Ambion multitol"),
	inventory_image = "ambion_multitol.png",
	tool_capabilities = {
		full_punch_interval = 0.7,
		max_drop_level=3,
		groupcaps={
			cracky = {times={[1]=1.0, [2]=1.00, [3]=1.00}, uses=44, maxlevel=4},
		},
		damage_groups = {fleshy=27},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {pickaxe = 1, shovel = 2, axe = 3, sword = 3}
})
minetest.register_craft({
    output = "ambion:ambion_multitol",
    recipe = {
        {"ambion:ambion_axe","ambion:ambion_shovel","ambion:ambion_pick"},
        {"","ambion:ambion_sword",""},
        {"","ambion:ambion_lump",""},
    }
})

minetest.register_craftitem("ambion:ambion_apple",{
description = "Ambion Apple",
inventory_image = "ambion_apple.png",
wield_image = "ambion_apple.png",
on_use = minetest.item_eat(30),
groups = {food_ambion = 1, fleshy = 3, dig_immediate = 3, flammable = 2}
})
minetest.register_craft({
    output = "ambion:ambion_apple",
    recipe = {
        {"","default:diamond",""},
        {"ambion:ambion_lump","default:apple","ambion:ambion_lump"},
        {"","default:diamond",""},
    }
})

minetest.register_tool("ambion:ambion_sword_up", {
	description = "Ambion sword up",
	inventory_image = "ambion_sword_up.png",
	tool_capabilities = {
		full_punch_interval = 0.80,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=1.0, [2]=0.40, [3]=0.10}, uses=67, maxlevel=4},
		},
		damage_groups = {fleshy=62},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {sword = 1}
})

minetest.register_craft({
    output = "ambion:ambion_sword_up",
    recipe = {
        {"ambion:ambion_block"},
        {"ambion:ambion_block"},
        {"ambion:ambion_sword"},
    }
})
