  -- which key
  return {
    "folke/which-key.nvim",
    event = "VeryLazy",
    config = require("skogix.plugins.configs.which-key").setup,
  }
