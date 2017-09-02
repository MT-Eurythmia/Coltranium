-- Ore def

minetest.register_node ("coltranium:stone_with_coltranium", {
	description = "Coltranium Ore",
	tiles = {"default_stone.png^coltranium_mineral_coltranium.png"},
	groups = {cracky = 3},
	sounds = default_stone_sounds,
	drop = "coltranium:coltranium_lump"
	})


-- Lump def

minetest.register_craftitem ("coltranium:coltranium_lump", {
	description = "Coltranium lump",
	inventory_image = "coltranium_coltranium_lump.png"
	})


-- Ingot def

minetest.register_craftitem ("coltranium:coltranium_ingot", {
	descritpion = "Coltranium ingot",
	inventory_image = "coltranium_coltranium_ingot.png"
	})


-- Block def

minetest.register_node ("coltranium:coltranium_block", {
	description = "Coltranium block",
	tiles = {"coltranium_coltranium_block.png"},
	groups = {snappy = 1, bendy = 2, cracky = 1, melty = 2, level= 2},
	sounds = default.node_sound_metal_defaults(),
	})

-- Recipes def

minetest.register_craft ({
	type = "cooking",
	output = "coltranium:coltranium_ingot",
	recipe = "coltranium:coltranium_lump"
	})

minetest.register_craft ({
	output = "coltranium:coltranium_block",
	recipe = {
			{"coltranium:coltranium_ingot", "coltranium:coltranium_ingot", "coltranium:coltranium_ingot"},
			{"coltranium:coltranium_ingot", "coltranium:coltranium_ingot", "coltranium:coltranium_ingot"},
			{"coltranium:coltranium_ingot", "coltranium:coltranium_ingot", "coltranium:coltranium_ingot"}
		}
	})

minetest.register_craft ({
	type = "shapeless",
	output = "coltranium:coltranium_ingot 9",
	recipe = {"coltranium:coltranium_block"}
	})
