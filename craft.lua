
-- ambion/craft.lua


minetest.register_craft({
    output = "ambion:ambion_sword",
    recipe = {
        {"ambion:ambion"},
        {"ambion:ambion"},
        {"ambion:ambion_lump"},
    }
})

minetest.register_craft({
    output = "ambion:ambion_axe",
    recipe = {
        {"ambion:ambion","ambion:ambion",""},
        {"ambion:ambion","ambion:ambion_lump",""},
        {"","ambion:ambion_lump",""},
    }
})

minetest.register_craft({
    output = "ambion:ambion_pick",
    recipe = {
        {"ambion:ambion","ambion:ambion","ambion:ambion"},
        {"","ambion:ambion_lump",""},
        {"","ambion:ambion_lump",""},
        } 
})

minetest.register_craft({
    output = "ambion:ambion_shovel",
    recipe = {
        {"ambion:ambion"},
        {"ambion:ambion_lump"},
        {"ambion:ambion_lump"},
    }
})

minetest.register_craft({
    output = "ambion:ambion_multitol",
    recipe = {
        {"ambion:ambion_axe","ambion:ambion_shovel","ambion:ambion_pick"},
        {"","ambion:ambion_sword",""},
        {"","ambion:ambion_lump",""},
    }
})

minetest.register_craft({
    output = "ambion:ambion_sword_up",
    recipe = {
        {"ambion:ambion_block"},
        {"ambion:ambion_block"},
        {"ambion:ambion_sword"},
    }
})

minetest.register_craft({
    output = "ambion:ambion_apple",
    recipe = {
        {"","default:diamond",""},
        {"ambion:ambion_lump","default:apple","ambion:ambion_lump"},
        {"","default:diamond",""},
    }
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

minetest.register_craft({
    output = "ambion:ambion_block",
    recipe = {
        {"ambion:ambion","ambion:ambion","ambion:ambion"},
        {"ambion:ambion","ambion:ambion","ambion:ambion"},
        {"ambion:ambion","ambion:ambion","ambion:ambion"},
    }
})

minetest.register_craft({
    output = "ambion:ambion_ore 4",
    recipe = {
        {"ambion:ambion_lump","ambion:ambion_lump"},
        {"ambion:ambion_lump","ambion:ambion_lump"}
    }
})

minetest.register_craft({
	output = "ambion:ambion_lump",
	recipe = {
		{"ambion:ambion_ore",}	
	},
})

minetest.register_craft({
    output = "ambion:ambion_potion",
    recipe = {
        {"","default:diamond",""},
        {"ambion:ambion","ambion:ambion_apple","ambion:ambion"},
        {"ambion:ambion","ambion:ambion","ambion:ambion"},
    }
})