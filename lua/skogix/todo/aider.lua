-- This file contains the configuration for the aider.nvim plugin.
-- q
-- It specifies the plugin's options and keybindings.
-- This file contains the configuration for the Aider.nvim plugin.
-- It specifies the plugin's options and keybindings.

return {
  'joshuavial/aider.nvim',  -- The plugin repository
  lazy = false,
  enable = true,
  config = true,
  opts = {
    auto_manage_context = true,  -- Automatically manage context for the plugin
    default_bindings = true,     -- Use the default key bindings provided by the plugin
  },
  keys = require("skogix.core.keymaps").aider,
}
