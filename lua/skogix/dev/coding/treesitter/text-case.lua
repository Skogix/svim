return {
  "johmsalas/text-case.nvim",
  config = function()
    require("textcase").setup()
    LazyVim.on_load("telescope.nvim", function()
      require("lua.skogix.todo.telescope").load_extension("lazy")
    end)
  end,
  keys = {
    { "gC", "<cmd>TextCaseOpenTelescope<CR>", mode = { "n", "v" }, desc = "Text Case" },
  },
}
