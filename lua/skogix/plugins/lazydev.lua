-- This file contains the configuration for the LazyDev.nvim plugin.
-- It specifies the plugin's options, filetypes, and dependencies.

-- Update language server / luals with workspace
-- https://github.com/folke/lazydev.nvim
return {
  {
    "folke/lazydev.nvim",
    -- NOTE: ladda bara för lua-filer
    ft = "lua",
    -- cmd = "LazyDev",
    -- keys = {
    --   { "<leader>ask", function() require("avante.api").ask() end, ft = "fzf", mode = "t", nowait = true },
    -- },
    opts = {
      dependencies = {
        { "Bilal2453/luvit-meta", lazy = true },
      },
      library = {
        -- See the configuration section for more details
        -- Load luvit types when the `vim.uv` word is found
        { path = "luvit-meta/library", words = { "vim%.uv" } },
        { path = "~/workspace/avante.nvim/lua", words = { "avante" } },
      }
    },
    -- keys = {
    --
    --   { "<leader>ask", function() require("avante.api").ask() end, ft = "fzf", mode = "t", nowait = true },
      -- ---@type avante.Config
      -- local opts =
      -- require("lazy.core.plugin").values(require("lazy.core.config").spec.plugins["avante.nvim"], "opts", false)
      --
      -- local mappings = {
      --   {
      --     opts.mappings.ask,
      --     function() require("avante.api").ask() end,
      --     desc = "avante: ask",
      --     mode = { "n", "v" },
      --   },
      --   {
      --     opts.mappings.refresh,
      --     function() require("avante.api").refresh() end,
      --     desc = "avante: refresh",
      --     mode = "v",
      --   },
      --   {
      --     opts.mappings.edit,
      --     function() require("avante.api").edit() end,
      --     desc = "avante: edit",
      --     mode = { "n", "v" },
      --   },
      -- }
      -- mappings = vim.tbl_filter(function(m) return m[1] and #m[1] > 0 end, mappings)
      -- return vim.list_extend(mappings, keys)
      -- }
  -- },
  -- TODO: vim.uv binds
  -- https://luvit.io/
  { "Bilal2453/luvit-meta", lazy = true },

  -- NOTE: CMP
  { -- optional completion source for require statements and module annotations
    "hrsh7th/nvim-cmp",
    opts = function(_, opts)
      opts.sources = opts.sources or {}
      table.insert(opts.sources, {
        name = "lazydev",
        group_index = 0, -- set group index to 0 to skip loading LuaLS completions
      })
    end,
  },

  -- NOTE: för framtiden så neodev inte kan användas
  { "folke/neodev.nvim", enabled = false }, -- make sure to uninstall or disable neodev.nvim
}}
