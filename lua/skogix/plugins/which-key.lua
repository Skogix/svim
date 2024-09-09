return {
  'folke/which-key.nvim',
  -- event = 'VeryLazy',
  lazy = false,
  enabled = true,
  -- TODO: triggers är inte speciellt snyggt, bör gå att göra snyggare
  triggers = {
    { "<leader>", mode = { "n" } },
  },
  debug = true,
  -- TODO: options/config
  opts = {},
  keys = {
    -- NOTE: visar lokala binds för buffern
    {
      "<leader>?",
      function()
        require("which-key").show({ global = false })
      end,
      desc = "[which-key] show buffer keybindings",
    },
    {"<leader>s", group = "search"},
  },
}
