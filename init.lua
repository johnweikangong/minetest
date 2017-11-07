minetest.register_tool("features:powerdrill", {
    description = "Powerful drill that destroys everything",
    inventory_image = "features_powerdrill.png",
	range = 20,
	tool_capabilities = {
		max_drop_level = 3,
		sound = "features_powerdrill",
		groupcaps = { -- Ensures that any type of block will be mined instantly
			unbreakable =   {times={[1] = 0, [2] = 0, [3] = 0}, uses = 0, maxlevel = 3},
			dig_immediate = {times={[1] = 0, [2] = 0, [3] = 0}, uses = 0, maxlevel = 3},
			fleshy =	{times={[1] = 0, [2] = 0, [3] = 0}, uses = 0, maxlevel = 3},
			choppy =	{times={[1] = 0, [2] = 0, [3] = 0}, uses = 0, maxlevel = 3},
			bendy =		{times={[1] = 0, [2] = 0, [3] = 0}, uses = 0, maxlevel = 3},
			cracky =	{times={[1] = 0, [2] = 0, [3] = 0}, uses = 0, maxlevel = 3},
			crumbly =	{times={[1] = 0, [2] = 0, [3] = 0}, uses = 0, maxlevel = 3},
			snappy =	{times={[1] = 0, [2] = 0, [3] = 0}, uses = 0, maxlevel = 3}
		},
	}
})

minetest.sound_play("features_powerdrill", {pos = pos, gain = 0.4, max_hear_distance = 10})
