minetest.register_tool("features:powerdrill", {
    description = "Powerful drill that destroys everything",
    inventory_image = "features_powerdrill.png",
	liquids_pointable = true,
		range = 14,
		tool_capabilities = {
			full_punch_interval = 0,
			max_drop_level=3,
			groupcaps={
			times = {0, 0, 0},
			uses = 0,
			maxlevel = 3
		},
			damage_groups = {fleshy = 20},
		},
})