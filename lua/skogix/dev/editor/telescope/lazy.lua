return {
  "tsakirist/telescope-lazy.nvim",
  config = function()
    LazyVim.on_load("telescope.nvim", function()
      require("lua.skogix.todo.telescope").load_extension("lazy")
    end)
  end,
  keys = {
    { "<leader>sp", "<cmd>Telescope lazy<CR>", desc = "Plugins (Lazy)" },
  },
}
