-- This is the main initialization file for the Neovim configuration.
-- It loads the core modules that set up options, lazy loading, keymaps, and autocommands.

require("skogix.core.options")  -- Load and set Neovim options
require("skogix.core.lazy")     -- Configure lazy loading of plugins
require("skogix.core.keymaps")  -- Define custom key mappings
require("skogix.core.autocmds") -- Set up autocommands for various events
-- require("skogix.plugins.hello") -- Load the hello function



