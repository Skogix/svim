-- Function to conditionally load modules with error handling
local function load_module(module_name, should_load)
    if should_load then
        local success, err = pcall(require, module_name)
        if not success then
            vim.notify("Failed to load module: " .. module_name .. "\nError: " .. err, vim.log.levels.ERROR)
        end
    end
end

-- Configuration for toggling modules
local modules = {
    -- Core modules
    ["skogix.core.options"] = true,
    ["skogix.core.lazy"] = true,
    ["skogix.core.keymaps"] = true,
    ["skogix.core.autocmds"] = true,

    -- Addon modules
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
    ["skogix.todo.recorder"] = false,
    ["skogix.todo.aider"] = true,
    ["skogix.todo.toggleterm"] = true,
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
