return {
  "piersolenski/telescope-import.nvim",
  opts = {},
  config = function()
    LazyVim.on_load("telescope.nvim", function()
      require("lua.skogix.todo.telescope").setup({
        extensions = {
          import = {
            insert_at_top = true,
          },
        },
      })
      require("lua.skogix.todo.telescope").load_extension("import")
    end)
  end,
  keys = {
    { "<leader>sI", "<cmd>Telescope import<CR>", desc = "Imports" },
  },
}
