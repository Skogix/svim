-- This file contains the configuration for the aider.nvim plugin.
-- It specifies the plugin's options and keybindings.
-- This file contains the configuration for the Aider.nvim plugin.
-- It specifies the plugin's options and keybindings.

return {
  'joshuavial/aider.nvim',  -- The plugin repository
  opts = {
    auto_manage_context = true,  -- Automatically manage context for the plugin
    default_bindings = true,     -- Use the default key bindings provided by the plugin
  },
  keys = {
    { "<leader>aaa", "<cmd>lua AiderOpen()<cr>", desc = "[aider] open aider" },  -- Keybinding to open Aider
    { "<leader>abc", "<cmd>lua AiderBackground()<cr>", desc = "[aider] open aider in background" }  -- Keybinding to open Aider in the background
  },
}
