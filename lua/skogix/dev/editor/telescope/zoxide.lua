return {
	{
		"jvgrootveld/telescope-zoxide",
		lazy = false,
		dependencies = {
			"nvim-telescope/telescope.nvim",
		},
		config = function()
			require("telescope").load_extension("zoxide")
			require("telescope").setup({
				extensions = {
					zoxide = {
						mappings = {
							default = {
								after_action = function(selection)
									require("telescope.builtin").find_files({ cwd = selection.path })
								end,
							},
						},
					},
				},
			})
		end,
		keys = {
			{ "<leader>fz", "<cmd>Telescope zoxide list<CR>", desc = "Zoxide" },
		},
	},
	{
		"goolord/alpha-nvim",
		optional = true,
		opts = function(_, dashboard)
			local button = dashboard.button("z", " " .. " Zoxide", "<cmd>Telescope zoxide list <CR>")
			button.opts.hl = "AlphaButtons"
			button.opts.hl_shortcut = "AlphaShortcut"
			table.insert(dashboard.section.buttons.val, 5, button)
		end,
	},
	{
		"nvimdev/dashboard-nvim",
		optional = true,
		opts = function(_, opts)
			local zoxide = {
				action = "Telescope zoxide list",
				desc = " Zoxide",
				icon = " ",
				key = "z",
			}

			zoxide.desc = zoxide.desc .. string.rep(" ", 43 - #zoxide.desc)
			zoxide.key_format = "  %s"

			table.insert(opts.config.center, 4, zoxide)
		end,
	},
}
