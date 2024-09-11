local map = vim.keymap.set

-- ';' till ':' i normal mode
map("n", ";", ":", { desc = "; -> :" })
-- rensa 's' i normal för search
map("n", "s", "<Nop>", { desc = "" })

map("n", "s", "<cmd>echo 'test'<cr>", { desc = "skriver ut test" })

local M = {}

-- template för which-key:
M.testkeys = function()
  return {
    -- NOTE: visar lokala binds för buffern
    {
      "<leader>?",
      function()
        require("which-key").show({ global = false })
      end,
      desc = "[which-key] show buffer keybindings",
    },
    {"<leader>s", group = "search"},
  }
end

-- M.chatgpt = function()
--   return {
--     { '<leader>cc', '<cmd>ChatGPT<cr>', desc = 'ChatGPT' },
--     { '<leader>ce', '<cmd>ChatGPTEditWithInstruction<cr>', desc = 'Edit with Instruction', mode = { 'n', 'v' } },
--     { '<leader>cd', '<cmd>ChatGPTRun docstring<cr>', desc = 'Docstring', mode = { 'n', 'v' } },
--     { '<leader>cf', '<cmd>ChatGPTRun fix_bugs<cr>', desc = 'Fix Bugs', mode = { 'n', 'v' } },
--     { '<leader>cg', '<cmd>ChatGPTRun grammar_correction<cr>', desc = 'Grammar Correction', mode = { 'n', 'v' } },
--     { '<leader>ck', '<cmd>ChatGPTRun keywords<cr>', desc = 'Extract Keywords', mode = { 'n', 'v' } },
--     { '<leader>ct', '<cmd>ChatGPTRun add_tests<cr>', desc = 'Add Tests', mode = { 'n', 'v' } },
--     { '<leader>cx', '<cmd>ChatGPTRun explain_code<cr>', desc = 'Explain Code', mode = { 'n', 'v' } },
--   }
-- end

return M
