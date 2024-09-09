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
    {"<leader>s", "<cmd>echo 'test'<cr>", desc = "skriver ut test" }
  }
end

return M
