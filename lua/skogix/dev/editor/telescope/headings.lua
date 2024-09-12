return {
  "crispgm/telescope-heading.nvim",
  config = function()
    LazyVim.on_load("telescope.nvim", function()
      require("lua.skogix.todo.telescope").setup({
        extensions = {
          heading = {
            treesitter = true,
          },
        },
      })
      require("lua.skogix.todo.telescope").load_extension("heading")
    end)
  end,
  keys = {
    { "<leader>s#", "<cmd>Telescope heading<CR>", desc = "Headings" },
  },
}
