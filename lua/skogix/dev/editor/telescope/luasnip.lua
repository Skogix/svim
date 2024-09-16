return {
	"benfowler/telescope-luasnip.nvim",
	lazy = false,
	dependencies = {
		"nvim-telescope/telescope.nvim",
	},
	config = function()
		-- LazyVim.on_load("telescope.nvim", function()
		-- end)
		require("telescope").load_extension("luasnip")
	end,
	keys = {
		{ "<leader>sl", "<cmd>Telescope luasnip<CR>", desc = "Luasnip (Snippets)" },
	},
}
