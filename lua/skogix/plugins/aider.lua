-- Configuration for the aider.nvim plugin
return {
  'joshuavial/aider.nvim',
  opts = {
    -- Automatically manage context
    auto_manage_context = true,
    -- Use default key bindings
    default_bindings = true,
  },
  keys = {
    -- Keybinding to open Aider
    { "<leader>aider", "<cmd>lua AiderOpen(dark-mode)<cr>", desc = "[aider] open aider" },
    -- Keybinding to open Aider in the background
    { "<leader>abg", "<cmd>lua AiderBackground()<cr>", desc = "[aider] open aider in background" }
  },
}
