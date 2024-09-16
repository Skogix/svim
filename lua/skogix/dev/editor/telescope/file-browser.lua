return {
	"nvim-telescope/telescope-file-browser.nvim",
	config = function()
		require("telescope").load_extension("file_browser")
	end,
	dependencies = {
		"nvim-telescope/telescope.nvim",
		"nvim-lua/plenary.nvim",
		{
			"nvim-tree/nvim-web-devicons",
			optional = true,
		},
	},
  -- stylua: ignore
  keys = require("skogix.core.keymaps").telescopefilebrowser()
,
}
