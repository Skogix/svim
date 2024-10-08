return {
  "stevearc/oil.nvim",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
    optional = true,
  },
  opts = {
    delete_to_trash = true,
    float = {
      max_height = 45,
      max_width = 90,
    },
    keymaps = {
      ["q"] = "actions.close",
    },
  },
  -- stylua: ignore
  keys = {
    { "<leader>;", function() require("lua.skogix.todo.oil").toggle_float() end, desc = "Toggle Oil" },
  },
}
