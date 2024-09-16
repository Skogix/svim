return {
	"akinsho/bufferline.nvim",
	event = "VeryLazy",
	enabled = not vim.g.started_by_firenvim,
		-- stylua: ignore
    keys = require("skogix.core.keymaps").bufferline,
	opts = {
		options = {
			-- mode = 'tabs',
			separator_style = "slant",
			show_close_icon = true,
			show_buffer_close_icons = true,
			diagnostics = "nvim_lsp",
			-- show_tab_indicators = true,
			-- enforce_regular_tabs = true,
			always_show_bufferline = true,
			-- indicator = {
			-- 	style = 'underline',
			-- },
			-- close_command = function(n)
			-- 	LazyVim.ui.bufremove(n)
			-- end,
			-- right_mouse_command = function(n)
			-- 	LazyVim.ui.bufremove(n)
			-- end,
			-- diagnostics_indicator = function(_, _, diag)
			-- 	local icons = LazyVim.config.icons.diagnostics
			-- 	local ret = (diag.error and icons.Error .. diag.error .. ' ' or '')
			-- 		.. (diag.warning and icons.Warn .. diag.warning or '')
			-- 	return vim.trim(ret)
			-- end,
			custom_areas = {
				right = function()
					local result = {}
					local root = LazyVim.root()
					table.insert(result, {
						text = "%#BufferLineTab# " .. vim.fg.fnamemodify(root, ":t"),
					})

					-- Session indicator
					if vim.v.this_session ~= "" then
						table.insert(result, { text = "%#BufferLineTab#  " })
					end
					return result
				end,
			},
			offsets = {
				{
					filetype = "neo-tree",
					text = "Neo-tree",
					highlight = "Directory",
					text_align = "center",
				},
			},
			-- ---@param opt bufferline.IconFetcherOpts
			-- get_element_icon = function(opt)
			-- 	return LazyVim.config.icons.ft[opt.filetype]
			-- end,
		},
	},
	config = function(_, opt)
		require("bufferline").setup(opts)
		-- Fix bufferline when restoring a session
		vim.api.nvim_create_autocmd({ "BufAdd", "BufDelete" }, {
			callback = function()
				vim.schedule(function()
					---@diagnostic disable-next-line: undefined-global
					pcall(nvim_bufferlin)
				end)
			end,
		})
	end,
}
