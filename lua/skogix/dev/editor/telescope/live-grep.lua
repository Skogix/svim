return {
	"nvim-telescope/telescope-live-grep-args.nvim",
	lazy = true,
	dependencies = {
		"nvim-telescope/telescope.nvim",
	},
	config = function()
		require("telescope").load_extension("lazy")
	end,
  -- stylua: ignore
  keys = {
    { "<leader>sg", function() require("telescope").extensions.live_grep_args.live_grep_args() end, desc = "Grep (root dir)" },
    { "<leader>/", function() require("telescope").extensions.live_grep_args.live_grep_args() end, desc = "Grep (root dir)" },
  },
}
