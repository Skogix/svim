return {
  "benfowler/telescope-luasnip.nvim",
  config = function()
    LazyVim.on_load("telescope.nvim", function()
      require("lua.skogix.todo.telescope").load_extension("luasnip")
    end)
  end,
  keys = {
    { "<leader>sl", "<cmd>Telescope luasnip<CR>", desc = "Luasnip (Snippets)" },
  },
}
