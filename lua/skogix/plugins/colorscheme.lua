-- This file contains the configuration for the Catppuccin colorscheme plugin.
-- It specifies the plugin's options and dependencies.

return {
  "catppuccin/nvim",
  name = "catppuccin",
  opts = {
    flavour = "mocha",  -- Set the color scheme flavour
  },
  dependencies = {  -- List of plugin dependencies
    "rktjmp/lush.nvim",  -- Dependency for lush.nvim
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    opts = {
      transparent_background = true,
      integrations = {
        alpha = true,
        fidget = true,
        flash = true,
        gitsigns = true,
        harpoon = true,
        lsp_trouble = true,
        markdown = true,
        mason = true,
        navic = {
          enabled = true,
        },
        noice = true,
        neotest = true,
        notify = true,
        octo = true,
        overseer = true,
        telescope = {
          enabled = true,
          style = "nvchad",
        },
        treesitter = true,
        which_key = true,
      },
      custom_highlights = function(colors)
        return {
          LineNr = { fg = colors.overlay0 },
          PackageInfoOutdatedVersion = { fg = colors.peach },
        }
      end,
    },
    init = function()
      vim.cmd.colorscheme("catppuccin")
    end,
  },
}
