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

require("lazy").setup({
  spec = {
    { import = "skogix.plugins.cmp" },
    { import = "skogix.plugins.telescope" },
    { import = "skogix.plugins.which-key" },
    { import = "skogix.plugins.lazydev" },
    { import = "skogix.plugins.lsp" },
    { import = "skogix.plugins.colorscheme" },
    { import = "skogix.plugins.oil" },
    { import = "skogix.plugins.git" },
    { import = "skogix.plugins.harpoon" },

    { import = "skogix.plugins.aider" },
    { import = "skogix.plugins.avante" },
    { import = "skogix.plugins.codeium" },

    { import = "skogix.plugins.lazygit" },
    { import = "skogix.plugins.neoai" },
    -- { import = "skogix.plugins.enlighten" },

    -- { import = "skogix.plugins.quickfix" },
    -- { import = "skogix.plugins.gp" },
    { import = "skogix.plugins.treesitter" },
    { import = "skogix.plugins.neorg" },
    -- { import = "skogix.plugins.ogpt" },
    -- { import = "skogix.plugins.gen" },
  },
})
