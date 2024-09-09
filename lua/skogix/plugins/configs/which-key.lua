local M = {}

function M.setup()
  local wk = require("which-key")
  wk.setup({
    plugins = { spelling = true },
  })
  wk.add({
    mode = { "n", "v" },
    { "<leader>s", group = "search" },
    { "g", group = "goto" },
  })
end

return M
