-- This file contains the configuration for the Which-Key.nvim plugin.
-- It specifies the plugin's options, keybindings, and dependencies.

-- Show keybinds on keypress
-- https://github.com/folke/which-key.nvim
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
  keys = require("skogix.core.keymaps").whichkey,
}
