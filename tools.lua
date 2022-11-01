
-- ambion/tools.lua

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

