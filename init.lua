require("skogix.core.options")
require("skogix.core.lazy")
require("skogix.core.keymaps")
require("skogix.core.autocmds")
-- Configuration for toggling modules
_G.modules = {
    -- Core modules
    ["skogix.core.options"] = true,
    ["skogix.core.lazy"] = true,
    ["skogix.core.keymaps"] = true,
    ["skogix.core.autocmds"] = true,
}

-- Plugin modules
_G.plugins = {
    ["skogix.plugins.chatgpt"] = true,
    ["skogix.plugins.cmp"] = true,
    ["skogix.plugins.colorscheme"] = true,
    ["skogix.plugins.git"] = true,
    ["skogix.plugins.harpoon"] = true,
    ["skogix.plugins.lazydev"] = true,
    ["skogix.plugins.lsp"] = true,
    ["skogix.plugins.oil"] = true,
    ["skogix.plugins.telescope"] = true,
    ["skogix.plugins.treesitter"] = true,
    ["skogix.plugins.which-key"] = true,

    -- -- Additional modules
    -- ["skogix.todo.recorder"] = false,
    -- ["skogix.todo.aider"] = true,
    -- ["skogix.todo.toggleterm"] = true,
    -- ["skogix.dev.editor.terminal.toggleterm"] = true,
    -- ["avante"] = true,
    -- ["bufferline"] = true,
    -- ["codeium"] = true,
    -- ["cokeline"] = true,
    -- ["copilot-chat"] = true,
    -- ["copilot"] = true,
    -- ["cursor"] = true,
    -- ["dressing"] = true,
    -- ["enlighten"] = true,
    -- ["fzf"] = true,
    -- ["gen"] = true,
    -- ["gp"] = true,
    -- ["hello"] = true,
    -- ["lazygit"] = true,
    -- ["neoai"] = true,
    -- ["neogen"] = true,
    -- ["neorg"] = true,
    -- ["noice"] = true,
    -- ["ogpt"] = true,
    -- ["quickfix"] = true,
    -- ["winbar"] = true,
}

-- Load all modules based on configuration
for module_name, should_load in pairs(modules) do
    load_module(module_name, should_load)
end

-- Return plugins configuration for lazy loading
return plugins

-- Load all modules based on configuration
for module_name, should_load in pairs(modules) do
    load_module(module_name, should_load)
end
