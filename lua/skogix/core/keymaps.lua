local map = vim.keymap.set

-- keys = require("skogix.core.keymaps").whichkey,
-- ';' till ':' i normal mode
map("n", ";", ":", { desc = "; -> :" })
-- rensa 's' i normal för search
map("n", "s", "<Nop>", { desc = "" })
map('n', '<C-h>', '<C-w><C-h>', { desc = 'focus left' })
map('n', '<C-l>', '<C-w><C-l>', { desc = 'focus right' })
map('n', '<C-j>', '<C-w><C-j>', { desc = 'focus up' })
map('n', '<C-k>', '<C-w><C-k>', { desc = 'focus down' })

map('n', '<S-h>', 'next buffer', { desc = 'focus down' })
map('n', '<S-l>', 'next buffer', { desc = 'focus down' })


-- Copy paste
vim.keymap.set({ 'n', 'x' }, '<leader>y', [["+y]]) -- copy to system clipboard
vim.keymap.set({ 'n', 'x' }, '<leader>p', [["+p]]) -- paste from system clipboard

-- tabs
map("n", "]<tab>", "<cmd>tabnext<cr>", { desc = "Next Tab" })
map("n", "[<tab>", "<cmd>tabprevious<cr>", { desc = "Previous Tab" })
map("n", "<tab>", "<cmd>tabnext<cr>", { desc = "Next Tab" })
map("n", "<s-tab>", "<cmd>tabprevious<cr>", { desc = "Previous Tab" })

local M = {}

M.aider = function() return {
  { "<leader>aaa", "<cmd>lua AiderOpen()<cr>", desc = "[aider] open aider" },  -- Keybinding to open Aider
  { "<leader>abc", "<cmd>lua AiderBackground()<cr>", desc = "[aider] open aider in background" }  -- Keybinding to open Aider in the background
} end

M.bufferline = function()
  return {
    { '<leader>bp', '<Cmd>BufferLineTogglePin<CR>', desc = 'Toggle Pin' },
    { '<leader>bP', '<Cmd>BufferLineGroupClose ungrouped<CR>', desc = 'Delete Non-Pinned Buffers' },
    { '<leader>bo', '<Cmd>BufferLineCloseOthers<CR>', desc = 'Delete Other Buffers' },
    { '<leader>br', '<Cmd>BufferLineCloseRight<CR>', desc = 'Delete Buffers to the Right' },
    { '<leader>bl', '<Cmd>BufferLineCloseLeft<CR>', desc = 'Delete Buffers to the Left' },
    { '<leader>tp', '<Cmd>BufferLinePick<CR>', desc = 'Tab Pick' },
    { '[B', '<cmd>BufferLineMovePrev<cr>', desc = 'Move buffer prev' },
    { ']B', '<cmd>BufferLineMoveNext<cr>', desc = 'Move buffer next' },
  } end

M.octo = function()
  return {
    { "<leader>gh", "<cmd>Octo<CR>", desc = "Open Octo" },
    { "<leader>oo", "<cmd>Octo pr list<CR>", desc = "Octo PR list all" },
    { "<leader>oc", "<cmd>Octo pr create<CR>", desc = "Octo PR create" },
    { "<leader>om", "<cmd>Octo pr merge squash delete<CR>", desc = "Octo PR merge" },
    { "<leader>ov", "<cmd>Octo pr browser<CR>", desc = "Octo PR open in browser" },
    { "<leader>oh", "<cmd>Octo pr checkout<CR>", desc = "Octo PR checkout" },
    { "<leader>ox", "<cmd>Octo pr create draft<CR>", desc = "Octo PR create draft" },
    { "<leader>od", "<cmd>Octo pr diff<CR>", desc = "Octo PR diff" },
    { "<leader>oy", "<cmd>Octo pr url<CR>", desc = "Octo PR copy URL" },
    { "<leader>of", "<cmd>Octo pr changes<CR>", desc = "Octo PR list changed files" },
    { "<leader>oj", "<cmd>Octo pr checks<CR>", desc = "Octo PR checks" },
    { "<leader>ol", "<cmd>Octo pr commits<CR>", desc = "Octo PR list commits" },
    { "<leader>or", "<cmd>Octo pr reload<CR>", desc = "Octo PR reload" },
    ["<leader>git"] = {
      function(plugin)
        require("lazy.util").float_term({ "lazygit", "log" }, {
          cwd = plugin.dir,
        })
      end,
      desc = "Open lazygit log",
    },
  }
end

M.neogit = function()
  return {
    { "<leader>gg", "<cmd>Neogit<CR>", desc = "Git" },
    { "<leader>gdd", "<cmd>DiffviewOpen<CR>", desc = "Git Diff Open" },
    { "<leader>gdc", "<cmd>DiffviewClose<CR>", desc = "Git Diff Close" },
    { "<leader>gdh", "<cmd>DiffviewFileHistory %<CR>", desc = "Git Diff Current File History" },
    { "<leader>gda", "<cmd>DiffviewFileHistory<CR>", desc = "Git Diff All File History" },
    { "<leader>gp", "<cmd>Neogit push<CR>", desc = "Git Push" },
  }
end
M.fugitive = function()
  return {
    { "<leader>gv", "<cmd>GBrowse<CR>", desc = "Git View in Browser" },
    -- { "<leader>gd", "<cmd>Gvdiffsplit<CR>", desc = "Git Diff" },
    { "<leader>gr", "<cmd>Gread<CR>", desc = "Git Read" },
    { "<leader>gw", "<cmd>Gwrite<CR>", desc = "Git Write" },
  }
end

M.fzf = function()
  return {
    { "<c-j>", "<c-j>", ft = "fzf", mode = "t", nowait = true },
    { "<c-k>", "<c-k>", ft = "fzf", mode = "t", nowait = true },
    {
      "<leader>,",
      "<cmd>FzfLua buffers sort_mru=true sort_lastused=true<cr>",
      desc = "Switch Buffer",
    },
    { "<leader>b", "<cmd>FzfLua buffers sort_mru=true sort_lastused=true<cr>", desc = "Buffers" },
    { "<leader>:", "<cmd>FzfLua command_history<cr>", desc = "Command History" },
    { "ss", "<cmd>FzfLua git_files<cr>", desc = "[fzf] search git files" },

    { "sg", "<cmd>FzfLua live_grep<cr>", desc = "[fzf] search git files" },
    -- { "<leader>/", LazyVim.pick("live_grep"), desc = Grep (Root Dir)" },
    -- { "<leader><space>", LazyVim.pick("auto"), desc = "Find Files (Root Dir)" },
    -- find
    -- { "<leader>fc", LazyVim.pick.config_files(), desc = "Find Config File" },
    -- { "<leader>ff", LazyVim.pick("auto"), desc = "Find Files (Root Dir)" },
    -- { "<leader>fF", LazyVim.pick("auto", { root = false }), desc = "Find Files (cwd)" },
    { "<leader>fg", "<cmd>FzfLua git_files<cr>", desc = "Find Files (git-files)" },
    { "<leader>fr", "<cmd>FzfLua oldfiles<cr>", desc = "Recent" },
    -- { "<leader>fR", LazyVim.pick("oldfiles", { cwd = vim.uv.cwd() }), desc = "Recent (cwd)" },
    -- git
    { "<leader>gc", "<cmd>FzfLua git_commits<CR>", desc = "Commits" },
    { "<leader>gs", "<cmd>FzfLua git_status<CR>", desc = "Status" },
    -- search
    { '<leader>s"', "<cmd>FzfLua registers<cr>", desc = "Registers" },
    { "<leader>sa", "<cmd>FzfLua autocmds<cr>", desc = "Auto Commands" },
    { "<leader>sb", "<cmd>FzfLua grep_curbuf<cr>", desc = "Buffer" },
    { "<leader>sc", "<cmd>FzfLua command_history<cr>", desc = "Command History" },
    { "<leader>sC", "<cmd>FzfLua commands<cr>", desc = "Commands" },
    { "<leader>sd", "<cmd>FzfLua diagnostics_document<cr>", desc = "Document Diagnostics" },
    { "<leader>sD", "<cmd>FzfLua diagnostics_workspace<cr>", desc = "Workspace Diagnostics" },
    -- { "<leader>sg", LazyVim.pick("live_grep"), desc = "Grep (Root Dir)" },
    -- { "<leader>sG", LazyVim.pick("live_grep", { root = false }), desc = "Grep (cwd)" },
    { "<leader>sh", "<cmd>FzfLua help_tags<cr>", desc = "Help Pages" },
    { "<leader>sH", "<cmd>FzfLua highlights<cr>", desc = "Search Highlight Groups" },
    { "<leader>sj", "<cmd>FzfLua jumps<cr>", desc = "Jumplist" },
    { "<leader>sk", "<cmd>FzfLua keymaps<cr>", desc = "Key Maps" },
    { "<leader>sl", "<cmd>FzfLua loclist<cr>", desc = "Location List" },
    { "<leader>sM", "<cmd>FzfLua man_pages<cr>", desc = "Man Pages" },
    { "<leader>sm", "<cmd>FzfLua marks<cr>", desc = "Jump to Mark" },
    { "<leader>sR", "<cmd>FzfLua resume<cr>", desc = "Resume" },
    { "<leader>sq", "<cmd>FzfLua quickfix<cr>", desc = "Quickfix List" },
    -- { "<leader>sw", LazyVim.pick("grep_cword"), desc = "Word (Root Dir)" },
    -- { "<leader>sW", LazyVim.pick("grep_cword", { root = false }), desc = "Word (cwd)" },
    -- { "<leader>sw", LazyVim.pick("grep_visual"), mode = "v", desc = "Selection (Root Dir)" },
    -- { "<leader>sW", LazyVim.pick("grep_visual", { root = false }), mode = "v", desc = "Selection (cwd)" },
    -- { "<leader>uC", LazyVim.pick("colorschemes"), desc = "Colorscheme with Preview" },
    {
      "<leader>ss",
      function()
        require("fzf-lua").lsp_document_symbols({
          regex_filter = symbols_filter,
        })
      end,
      desc = "Goto Symbol",
    },
    {
      "<leader>sS",
      function()
        require("fzf-lua").lsp_live_workspace_symbols({
          regex_filter = symbols_filter,
        })
      end,
      desc = "Goto Symbol (Workspace)",
    }
  }
end

M.telescope = function()
  return {
    { "sg", ":lua require('telescope.builtin').grep_string()<CR>", noremap = true, silent = true, desc = "[telescope] grep string" },
    { "st", ":lua require('telescope.builtin').treesitter()<CR>", noremap = true, silent = true, desc = "Treesitter" },
    { "sm", ":lua require('telescope.builtin').marks()<CR>", noremap = true, silent = true, desc = "Marks" },
    { "s/", ":lua require('telescope.builtin').current_buffer_fuzzy_find()<CR>", noremap = true, silent = true, desc = "Search line buffer" },
    { "sf", ":lua require('telescope.builtin').find_files({hidden=true})<CR>", noremap = true, silent = true, desc = "Find files" },
    { "ss", ":lua require('telescope.builtin').find_files({hidden=true})<CR>", noremap = true, silent = true, desc = "Find files" },
  }
end

-- template för which-key:
M.whichkey = function()
  return {
    -- NOTE: visar lokala binds för buffern
    {
      "<leader>?",
      function()
        require("which-key").show({ global = false })
      end,
      desc = "[which-key] show buffer keybindings",
    },
    {"<leader>s", group = "search"},
  }
end

M.chatgpt = function()
  return {
    { '<leader>cc', '<cmd>ChatGPT<cr>', desc = 'ChatGPT' },
    { '<leader>ce', '<cmd>ChatGPTEditWithInstruction<cr>', desc = 'Edit with Instruction', mode = { 'n', 'v' } },
    { '<leader>cd', '<cmd>ChatGPTRun docstring<cr>', desc = 'Docstring', mode = { 'n', 'v' } },
    { '<leader>cf', '<cmd>ChatGPTRun fix_bugs<cr>', desc = 'Fix Bugs', mode = { 'n', 'v' } },
    { '<leader>cg', '<cmd>ChatGPTRun grammar_correction<cr>', desc = 'Grammar Correction', mode = { 'n', 'v' } },
    { '<leader>ck', '<cmd>ChatGPTRun keywords<cr>', desc = 'Extract Keywords', mode = { 'n', 'v' } },
    { '<leader>ct', '<cmd>ChatGPTRun add_tests<cr>', desc = 'Add Tests', mode = { 'n', 'v' } },
    { '<leader>cx', '<cmd>ChatGPTRun explain_code<cr>', desc = 'Explain Code', mode = { 'n', 'v' } },
  }
end

return M
