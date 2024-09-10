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
    { "<leader>aider", "<cmd>lua AiderOpen()<cr>", desc = "[aider] open aider" },
    -- Keybinding to open Aider in the background
    { "<leader>abg", "<cmd>lua AiderBackground()<cr>", desc = "[aider] open aider in background" },

    -- Uncomment the lines below to use alternative keybindings
    -- vim.api.nvim_set_keymap('n', '<leader>oa', '<cmd>lua AiderOpen()<cr>', {noremap = true, silent = true}),
    -- vim.api.nvim_set_keymap('n', '<leader>ob', '<cmd>lua AiderBackground()<cr>', {noremap = true, silent = true})
  },
}
