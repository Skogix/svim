return {
	"tsakirist/telescope-lazy.nvim",
	lazy = false,
	dependencies = {
		"nvim-telescope/telescope.nvim",
	},
	config = function()
		require("telescope").load_extension("lazy")
	end,
	keys = require("skogix.core.keymaps").telescopelazy,
}
