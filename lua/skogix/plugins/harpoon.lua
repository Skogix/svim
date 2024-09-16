-- This file contains the configuration for the harpoon.nvim plugin.
-- It specifies the plugin's options, keybindings, and dependencies.

return {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  opts = {
    menu = {
      width = vim.api.nvim_win_get_width(0) - 4,
    },
    settings = {
      save_on_toggle = true,
    },
  },
  keys = require("skogix.core.keymaps").harpoon,

    -- for i = 1, 5 do
    --   table.insert(keys, {
    --     "<leader>" .. i,
    --     function()
    --       require("harpoon"):list():select(i)
    --     end,
    --     desc = "Harpoon to File " .. i,
    --   })
    -- end
    -- return keys
}
