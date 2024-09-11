local prefix = "<leader>A"

return {
  { import = "lazyvim.plugins.extras.coding.neogen" },
  {
    "danymat/neogen",
    -- stylua: ignore
    keys = {
      { prefix .. "d", function() require("lua.skogix.todo.neogen").generate() end, desc = "Default Annotation" },
      { prefix .. "C", function() require("lua.skogix.todo.neogen").generate({ type = "class" }) end, desc = "Class" },
      { prefix .. "f", function() require("lua.skogix.todo.neogen").generate({ type = "func" }) end, desc = "Function" },
      { prefix .. "t", function() require("lua.skogix.todo.neogen").generate({ type = "type" }) end, desc = "Type" },
      { prefix .. "F", function() require("lua.skogix.todo.neogen").generate({ type = "file" }) end, desc = "File" },
      { "<leader>cn", false },
    },
  },
  {
    "Zeioth/dooku.nvim",
    cmd = { "DookuGenerate", "DookuOpen", "DookuAutoSetup" },
    opts = {},
    -- stylua: ignore
    keys = {
      { prefix .. "g", "<Cmd>DookuGenerate<CR>", desc = "Generate HTML Docs" },
      { prefix .. "o", "<Cmd>DookuOpen<CR>", desc = "Open HTML Docs" },
    },
  },
  {
    "folke/which-key.nvim",
    opts = {
      spec = {
        { prefix, group = "annotation/snippets", icon = " " },
      },
    },
  },
}
