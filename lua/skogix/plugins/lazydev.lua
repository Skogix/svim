-- This file contains the configuration for the LazyDev.nvim plugin.
-- It specifies the plugin's options, filetypes, and dependencies.

-- Update language server / luals with workspace
-- https://github.com/folke/lazydev.nvim
return {
  {
    "folke/lazydev.nvim",
    -- NOTE: ladda bara för lua-filer
    ft = "lua",
    opts = {
      library = {
        -- See the configuration section for more details
        -- Load luvit types when the `vim.uv` word is found
        { path = "luvit-meta/library", words = { "vim%.uv" } },
      },
    },
  },
  -- TODO: vim.uv binds
  -- https://luvit.io/
  -- { "Bilal2453/luvit-meta", lazy = true },

  -- NOTE: CMP
  -- { -- optional completion source for require statements and module annotations
  --   "hrsh7th/nvim-cmp",
  --   opts = function(_, opts)
  --     opts.sources = opts.sources or {}
  --     table.insert(opts.sources, {
  --       name = "lazydev",
  --       group_index = 0, -- set group index to 0 to skip loading LuaLS completions
  --     })
  --   end,
  -- },

  -- NOTE: för framtiden så neodev inte kan användas
  { "folke/neodev.nvim", enabled = false }, -- make sure to uninstall or disable neodev.nvim
}
