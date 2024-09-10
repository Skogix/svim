
  return {
    "jackMort/ChatGPT.nvim",
    event = "VeryLazy",
    opts = require("azvim.plugins.configs.chatgpt").opts,
    keys = require("azvim.plugins.configs.chatgpt").keys,
    dependencies = {
      "MunifTanjim/nui.nvim",
      "nvim-lua/plenary.nvim",
      "folke/trouble.nvim",
      "nvim-telescope/telescope.nvim",
    },
  }
