return {
  "nvim-telescope/telescope-dap.nvim",
  cond = LazyVim.has("nvim-dap"),
  config = function()
    LazyVim.on_load("telescope.nvim", function()
      require("lua.skogix.todo.telescope").load_extension("dap")
    end)
  end,
  -- stylua: ignore
  keys = {
    { "<leader>dm", "<cmd>Telescope dap commands<CR>", desc = "Commands" },
    { "<leader>df", "<cmd>Telescope dap frames<CR>", desc = "Frames" },
    { "<leader>dG", "<cmd>Telescope dap configurations<CR>", desc = "Configurations" },
    { "<leader>dbL", "<cmd>Telescope dap list_breakpoints<CR>", desc = "List Breakpoints" },
    { "<leader>dv", "<cmd>Telescope dap variables<CR>", desc = "Variables" },
  },
}
