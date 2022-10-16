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
    tiles = {"ambion_block.png"},
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
    groups = {choppy = 1, oddly_breakable_by_hand = 1, flammable = 2},
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
			cracky = {times={[1]=1.0, [2]=0.60, [3]=0.30}, uses=40, maxlevel=4},
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
		full_punch_interval = 2.1,
		max_drop_level=3,
		groupcaps={
			cracky = {times={[1]=1.0, [2]=0.60, [3]=0.30}, uses=44, maxlevel=4},
		},
		damage_groups = {fleshy=4},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {shovel = 2}
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
			cracky = {times={[1]=1.0, [2]=0.60, [3]=0.30}, uses=44, maxlevel=4},
		},
		damage_groups = {fleshy=27},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {pickaxe = 1, shovel = 2, axe = 3, sword = 4}
})
minetest.register_craft({
    output = "ambion:ambion_multitol",
    recipe = {
        {"ambion:ambion_axe","ambion:ambion_shovel","ambion:ambion_pick"},
        {"","ambion:ambion_sword",""},
        {"","ambion:ambion_lump",""},
    }
})
