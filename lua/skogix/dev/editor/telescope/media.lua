return {
  "dharmx/telescope-media.nvim",
  config = function()
    LazyVim.on_load("telescope.nvim", function()
      require("lua.skogix.todo.telescope").setup({
        extensions = {
          media = {
            backend = "ueberzug", -- image/gif backend
          },
        },
      })
      require("lua.skogix.todo.telescope").load_extension("media")
    end)
  end,
  keys = {
    { "<leader>sM", "<cmd>Telescope media<CR>", desc = "Media" },
  },
}
