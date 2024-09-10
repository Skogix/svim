return {
  'joshuavial/aider.nvim',
  opts = {
    auto_manage_context = true,
    default_bindings = true,
  },
  keys = {
    -- set a keybinding for the AiderOpen function
    -- 
    { "<leader>aider", "<cmd>lua AiderOpen()<cr>", desc = "[aider] open aider" },
    { "<leader>abg", "<cmd>lua AiderBackground()<cr>", desc = "[aider] open aider in background" },

    -- vim.api.nvim_set_keymap('n', '<leader>oa', '<cmd>lua AiderOpen()<cr>', {noremap = true, silent = true}),
    -- set a keybinding for the AiderBackground function
    -- vim.api.nvim_set_keymap('n', '<leader>ob', '<cmd>lua AiderBackground()<cr>', {noremap = true, silent = true})


  },
}
