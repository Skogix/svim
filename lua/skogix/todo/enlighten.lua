  return {
    "evanmcneely/enlighten.nvim",
    event = "VeryLazy",
    opts = {
      -- ...
    },
    keys = {
      { "<leader>ae", function() require("enlighten").edit() end, desc = "Edit", mode = { "n", "v" } },
      { "<leader>ac", function() require("enlighten").chat() end, desc = "Chat", mode = { "n", "v" } },
    },
  }
