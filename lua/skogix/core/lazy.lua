local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable",
		lazypath,
	})
end

vim.opt.rtp:prepend(lazypath)

local plugins = require("init").plugins

local specs = {}
for plugin_name, should_load in pairs(plugins) do
    if should_load then
        table.insert(specs, { import = plugin_name })
    end
end

require("lazy").setup({
	spec = {
		{ import = "skogix.plugins" },
    { import = "skogix.todo.aider" },
    { import = "skogix.todo.toggleterm" },
	},
})
