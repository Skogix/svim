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

-- TODO: kolla var vim hämtar .env
-- vim.opt.rtp:prepend(vim.env.LAZY or lazypath)
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  spec = {
    { import = "skogix.plugins.which-key" },
    { import = "skogix.plugins.lazydev" },
    { import = "skogix.plugins.lsp" },
    { import = "skogix.plugins.cmp" },
  },
})
