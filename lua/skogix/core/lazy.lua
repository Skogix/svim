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

-- Load plugins from a separate file to avoid circular dependency
local plugins = require("skogix.core.plugins") -- Change this line

local specs = {
  {import = "skogix.plugins"},
}
for plugin_name, should_load in pairs(plugins) do
    if should_load then
        table.insert(specs, { import = plugin_name })
    end
end

require("lazy").setup(specs)
