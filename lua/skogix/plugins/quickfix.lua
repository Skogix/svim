-- This file contains the configuration for the nvim-bqf plugin.
-- It specifies the plugin's options, events, and dependencies.

-- Better quickfix
  return {
    "kevinhwang91/nvim-bqf",
    dependencies = { "nvim-treesitter/nvim-treesitter" },
    event = "VeryLazy",
    opts = {},
  }
