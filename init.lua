musicblock_handle = -1

minetest.register_tool("features:powerdrill", {
    description = "Powerful drill that destroys everything",
    inventory_image = "features_powerdrill.png",
	range = 20,
	tool_capabilities = {
		max_drop_level = 3,
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
	},
	after_use = function(itemstack, user, node, digparams)
		minetest.sound_play("features_powerdrill")
	end
})

minetest.register_node("features:musicblock", {
  description = "Look, it's a magic box that can play music!",
  inventory_image = "features_jukebox.png",
  groups = {snappy=2,choppy=2,oddly_breakable_by_hand=2},
  minetest.register_on_punchnode(function(pos, node, puncher)
	if node.name=="features:musicblock" then
		if musicblock_handle == -1 then
			musicblock_handle = minetest.sound_play("features_audio", {
            gain = 1.0,
            max_hear_distance = 32,})
        else
            minetest.sound_stop(musicblock_handle)
			musicblock_handle = -1
        end
	end
  end)
})

