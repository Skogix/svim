-- This file contains the configuration for the Avante.nvim plugin.
-- It specifies the plugin's options, events, build instructions, and dependencies.

-- This file contains the configuration for the avante.nvim plugin.
-- It specifies the plugin's options, events, build instructions, and dependencies.

return {
  "yetone/avante.nvim",
  event = "VeryLazy",  -- Load the plugin on the "VeryLazy" event
  lazy = false,        -- Do not lazy-load the plugin
  version = false,     -- Always pull the latest changes; set a version if needed
  opts = {
    -- add any opts here
  },
  build = "make",  -- Command to build the plugin from source
  dependencies = {
    "stevearc/dressing.nvim",       -- Dependency for UI components
    "nvim-lua/plenary.nvim",        -- Dependency for utility functions
    "MunifTanjim/nui.nvim",         -- Dependency for UI elements
    "nvim-tree/nvim-web-devicons",  -- Optional: for file icons (or use echasnovski/mini.icons)
    "zbirenbaum/copilot.lua",       -- Optional: for Copilot integration
    {
      "HakonHarnes/img-clip.nvim",  -- Optional: support for image pasting
      event = "VeryLazy",           -- Load on the "VeryLazy" event
      opts = {
        -- Recommended settings for img-clip.nvim
        default = {
          embed_image_as_base64 = false,
          prompt_for_file_name = false,
          drag_and_drop = {
            insert_mode = true,
          },
          -- Required for Windows users to use absolute paths
          use_absolute_path = true,
        },
      },
    },
    {
      'MeanderingProgrammer/render-markdown.nvim',  -- Optional: support for rendering markdown
      opts = {
        file_types = { "markdown", "Avante" },  -- File types to render
      },
      ft = { "markdown", "Avante" },
    },
  },
  "yetone/avante.nvim",
  event = "VeryLazy",  -- Load the plugin on the "VeryLazy" event
  lazy = false,        -- Do not lazy-load the plugin
  version = false,     -- Always pull the latest changes; set a version if needed
  opts = {
    -- add any opts here
  },
  build = "make",  -- Command to build the plugin from source
  dependencies = {
    "stevearc/dressing.nvim",       -- Dependency for UI components
    "nvim-lua/plenary.nvim",        -- Dependency for utility functions
    "MunifTanjim/nui.nvim",         -- Dependency for UI elements
    "nvim-tree/nvim-web-devicons",  -- Optional: for file icons (or use echasnovski/mini.icons)
    "zbirenbaum/copilot.lua",       -- Optional: for Copilot integration
    {
      "HakonHarnes/img-clip.nvim",  -- Optional: support for image pasting
      event = "VeryLazy",           -- Load on the "VeryLazy" event
      opts = {
        -- Recommended settings for img-clip.nvim
        default = {
          embed_image_as_base64 = false,
          prompt_for_file_name = false,
          drag_and_drop = {
            insert_mode = true,
          },
          -- Required for Windows users to use absolute paths
          use_absolute_path = true,
        },
      },
    },
    {
      'MeanderingProgrammer/render-markdown.nvim',  -- Optional: support for rendering markdown
      opts = {
        file_types = { "markdown", "Avante" },  -- File types to render
      },
      ft = { "markdown", "Avante" },
    },
  },
}
