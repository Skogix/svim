-- Configuration for toggling modules
local modules = {
    -- Core modules
    ["skogix.core.options"] = true,
    ["skogix.core.lazy"] = true,
    ["skogix.core.keymaps"] = true,
    ["skogix.core.autocmds"] = true,

    -- Addon modules
    ["chatgpt"] = true,
    ["cmp"] = true,
    ["colorscheme"] = true,
    ["git"] = true,
    ["harpoon"] = true,
    ["lazydev"] = true,
    ["lsp"] = true,
    ["oil"] = true,
    ["telescope"] = true,
    ["treesitter"] = true,
    ["which-key"] = true,
}

-- Load all modules based on configuration
for module_name, should_load in pairs(modules) do
    load_module(module_name, should_load)
end

