-- This file contains the configuration for the ChatGPT.nvim plugin.
-- It specifies the plugin's options, keybindings, and dependencies.

return {
  "jackMort/ChatGPT.nvim",
  event = "VeryLazy",  -- Load the plugin on the "VeryLazy" event
  opts = {
    popup_input = {
      submit = "<CR>",  -- Key to submit input in the popup
    },
  },
  keys = {
    {
      "<leader>cc",  -- Keybinding to open ChatGPT
      "<cmd>ChatGPT<cr>",
      desc = "ChatGPT",
    },
    {
      "<leader>ce",  -- Keybinding to edit with instruction
      "<cmd>ChatGPTEditWithInstruction<cr>",
      desc = "Edit with Instruction",
      mode = { "n", "v" },  -- Available in normal and visual modes
    },
    {
      "<leader>cd",  -- Keybinding to generate a docstring
      "<cmd>ChatGPTRun docstring<cr>",
      desc = "Docstring",
      mode = { "n", "v" },
    },
    {
      "<leader>cf",  -- Keybinding to fix bugs
      "<cmd>ChatGPTRun fix_bugs<cr>",
      desc = "Fix Bugs",
      mode = { "n", "v" },
    },
    {
      "<leader>cg",  -- Keybinding for grammar correction
      "<cmd>ChatGPTRun grammar_correction<cr>",
      desc = "Grammar Correction",
      mode = { "n", "v" },
    },
    {
      "<leader>ck",  -- Keybinding to extract keywords
      "<cmd>ChatGPTRun keywords<cr>",
      desc = "Extract Keywords",
      mode = { "n", "v" },
    },
    {
      "<leader>ct",  -- Keybinding to add tests
      "<cmd>ChatGPTRun add_tests<cr>",
      desc = "Add Tests",
      mode = { "n", "v" },
    },
    {
      "<leader>cx",  -- Keybinding to explain code
      "<cmd>ChatGPTRun explain_code<cr>",
      desc = "Explain Code",
      mode = { "n", "v" },
    },
  },
  dependencies = {  -- List of plugin dependencies
    "MunifTanjim/nui.nvim",          -- Dependency for UI components
    "nvim-lua/plenary.nvim",         -- Dependency for utility functions
    "folke/trouble.nvim",            -- Dependency for diagnostics and quickfix
    "nvim-telescope/telescope.nvim", -- Dependency for fuzzy finding
  },
}
