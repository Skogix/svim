return {
	{
		"debugloop/telescope-undo.nvim",
		opts = {},
		dependencies = {
			"nvim-telescope/telescope.nvim",
		},
		config = function()
			require("telescope-undo").setup({
				extensions = {
					undo = {
						side_by_side = true,
						layout_strategy = "vertical",
						layout_config = {
							preview_height = 0.6,
						},
					},
				},
			})
			require("telescope").load_extension("undo")
		end,
		keys = {
			{ "<leader>su", "<cmd>Telescope undo<cr>", desc = "Undos" },
		},
	},
}
