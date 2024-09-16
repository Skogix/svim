-- This file contains the configuration for the Telescope.nvim plugin.
-- It specifies the plugin's options, keybindings, and dependencies.

-- Define the Telescope plugin configuration
local M = {
	"nvim-telescope/telescope.nvim",
	lazy = false,
	enabled = true,
	keys = require("skogix.core.keymaps").telescope,
	dependencies = {
		{ "nvim-lua/popup.nvim" },
		{ "nvim-lua/plenary.nvim" },
	},
	config = function()
		-- Load the telescope module
		local telescope = require("telescope")
		telescope.setup({
			defaults = {
				vimgrep_arguments = {
					"rg",
					"--color=never",
					"--no-heading",
					"--with-filename",
					"--line-number",
					"--column",
					"--smart-case",
				},
				layout_strategy = "horizontal",
				layout_config = {
					horizontal = {
						prompt_position = "bottom",
						preview_width = 0.55,
						results_width = 0.8,
					},
					vertical = {
						mirror = false,
					},
					width = 0.87,
					height = 0.95,
					preview_cutoff = 120,
				},
				prompt_prefix = "   ",
				selection_caret = "▷ ",
				winblend = 0,
				border = {},
				borderchars = {
					prompt = { "━", "┃", "━", "┃", "┏", "┓", "┛", "┗" },
					preview = { "─", "│", "─", "│", "┌", "┐", "┘", "└" },
					results = { "─", "│", "─", "│", "┌", "┐", "┘", "└" },
				},
				path_display = {
					filename_first = {
						reverse_directories = false,
					},
				},
				set_env = { ["COLORTERM"] = "truecolor" },
				mappings = {
					i = {
						["<c-t>"] = trouble.open,
					},
					n = {
						["<c-t>"] = trouble.open_with_trouble,
					},
				},
			},
			extensions = {
				fzf = {
					fuzzy = true, -- false will only do exact matching
					override_generic_sorter = true, -- override the generic sorter
					override_file_sorter = true, -- override the file sorter
					case_mode = "smart_case", -- or "ignore_case" or "respect_case"
				},
			},
		})
	end,
	my_git_commits = function(opts)
		opts = opts or {}
		opts.previewer = require("telescope.previewers").new_termopen_previewer({
			get_command = function(entry)
				if entry.status == " D" then
					return
				end

				if entry.status == "??" then
					return { "bat", "--style=plain", "--pager", "less -R", entry.value }
				end

				return { "git", "-c", "core.pager=delta", "-c", "delta.side-by-side=false", "diff", entry.value }
			end,
		})

		require("telescope.builtin").git_commits(opts)
	end,
	my_git_bcommits = function(opts)
		opts = opts or {}
		opts.previewer = require("telescope.previewers").new_termopen_previewer({
			get_command = function(entry)
				if entry.status == " D" then
					return
				end

				if entry.status == "??" then
					return { "bat", "--style=plain", "--pager", "less -R", entry.value }
				end

				return { "git", "-c", "core.pager=delta", "-c", "delta.side-by-side=false", "diff", entry.value }
			end,
		})

		require("telescope.builtin").git_bcommits(opts)
	end,
	my_git_status = function(opts)
		opts = opts or {}
		opts.git_icons = {
			added = "",
			changed = "",
			copied = "C",
			renamed = "",
			unmerged = "",
			untracked = "",
			deleted = "✖",
		}
		opts.previewer = require("telescope.previewers").new_termopen_previewer({
			get_command = function(entry)
				if entry.status == " D" then
					return
				end

				if entry.status == "??" then
					return { "bat", "--style=plain", "--pager", "less -R", entry.value }
				end

				return { "git", "-c", "core.pager=delta", "-c", "delta.side-by-side=false", "diff", entry.value }
			end,
		})

		require("telescope.builtin").git_status(opts)
	end,
	my_note = function()
		require("telescope.builtin").live_grep({ prompt_title = " Note ", cwd = "~/Notes" })
	end,
	project_files = function()
		local opts = {} -- define here if you want to define something
		local ok = pcall(require("telescope.builtin").git_files, opts)
		if not ok then
			require("telescope.builtin").find_files(opts)
		end
	end,
	my_buffers = function()
		require("telescope.builtin").buffers({
			layout_strategy = "vertical",
			ignore_current_buffer = true,
			sort_mru = true,
		})
	end,
}

-- Configure the Telescope plugin
function M.config()
	-- Load the telescope module
	-- local trouble = require("trouble.sources.telescope")
	local telescope = require("telescope")
	telescope.setup({
		defaults = {
			vimgrep_arguments = {
				"rg",
				"--color=never",
				"--no-heading",
				"--with-filename",
				"--line-number",
				"--column",
				"--smart-case",
			},
			layout_strategy = "horizontal",
			layout_config = {
				horizontal = {
					prompt_position = "bottom",
					preview_width = 0.55,
					results_width = 0.8,
				},
				vertical = {
					mirror = false,
				},
				width = 0.87,
				height = 0.95,
				preview_cutoff = 120,
			},
			prompt_prefix = "   ",
			selection_caret = "▷ ",
			winblend = 0,
			border = {},
			borderchars = {
				prompt = { "━", "┃", "━", "┃", "┏", "┓", "┛", "┗" },
				preview = { "─", "│", "─", "│", "┌", "┐", "┘", "└" },
				results = { "─", "│", "─", "│", "┌", "┐", "┘", "└" },
			},
			path_display = {
				filename_first = {
					reverse_directories = false,
				},
			},
			set_env = { ["COLORTERM"] = "truecolor" },
			mappings = {
				-- i = {
				--   ["<c-t>"] = trouble.open,
				-- },
				-- n = {
				--   ["<c-t>"] = trouble.open_with_trouble
				-- },
			},
		},
		extensions = {
			fzf = {
				fuzzy = true, -- false will only do exact matching
				override_generic_sorter = true, -- override the generic sorter
				override_file_sorter = true, -- override the file sorter
				case_mode = "smart_case", -- or "ignore_case" or "respect_case"
			},
		},
	})

	-- Extensions

	-- telescope.load_extension("repo")
	-- telescope.load_extension("neoclip")
	-- telescope.load_extension("notify")
	-- telescope.load_extension("dap")
	-- telescope.load_extension("fzf")
	-- telescope.load_extension("zoxide")
	-- telescope.load_extension("live_grep_args")

	-- Load required modules
	local previewers = require("telescope.previewers")
	local builtin = require("telescope.builtin")
	local conf = require("telescope.config")

	-- Define a custom previewer using delta for git diffs
	local delta = previewers.new_termopen_previewer({
		get_command = function(entry)
			if entry.status == " D" then
				return
			end

			if entry.status == "??" then
				return { "bat", "--style=plain", "--pager", "less -R", entry.value }
			end

			return { "git", "-c", "core.pager=delta", "-c", "delta.side-by-side=false", "diff", entry.value }
		end,
	})
end

-- Custom Telescope functions for git and notes
function M.my_git_commits(opts)
	opts = opts or {}
	opts.previewer = delta

	builtin.git_commits(opts)
end

function M.my_git_bcommits(opts)
	opts = opts or {}
	opts.previewer = delta

	builtin.git_bcommits(opts)
end

function M.my_git_status(opts)
	opts = opts or {}
	opts.git_icons = {
		added = "",
		changed = "",
		copied = "C",
		renamed = "",
		unmerged = "",
		untracked = "",
		deleted = "✖",
	}
	opts.previewer = delta

	builtin.git_status(opts)
end

function M.my_note()
	builtin.live_grep({ prompt_title = " Note ", cwd = "~/Notes" })
end

function M.project_files()
	local opts = {} -- define here if you want to define something
	local ok = pcall(require("telescope.builtin").git_files, opts)
	if not ok then
		require("telescope.builtin").find_files(opts)
	end
end

function M.my_buffers()
	builtin.buffers({
		layout_strategy = "vertical",
		ignore_current_buffer = true,
		sort_mru = true,
	})
end

-- Return the module
return M
