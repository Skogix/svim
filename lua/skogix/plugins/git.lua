return {
  "tpope/vim-fugitive",
  cmd = {
    "Git",
    "GBrowse",
    "Gread",
    "Gwrite",
    "Gdiffsplit",
    "Gvdiffsplit",
  },
  keys = {
    { "<leader>gv", "<cmd>GBrowse<CR>", desc = "Git View in Browser" },
    -- { "<leader>gd", "<cmd>Gvdiffsplit<CR>", desc = "Git Diff" },
    { "<leader>gr", "<cmd>Gread<CR>", desc = "Git Read" },
    { "<leader>gw", "<cmd>Gwrite<CR>", desc = "Git Write" },
  },
  {
    "ruifm/gitlinker.nvim",
    dependencies = "nvim-lua/plenary.nvim",
    opts = {
      -- default mapping to call url generation with action_callback
      mappings = "<leader>gy",
    },
  },
  {
    "lewis6991/gitsigns.nvim",
    event = "BufReadPre",
    opts = function()
      local C = {
        on_attach = function(buffer)
          local gs = package.loaded.gitsigns

          local function map(mode, l, r, desc)
            vim.keymap.set(mode, l, r, { buffer = buffer, desc = desc })
          end

          map("n", "]g", gs.next_hunk, "Next Hunk")
          map("n", "[g", gs.prev_hunk, "Prev Hunk")
          map("n", "<leader>gb", function()
            gs.blame_line({ full = true })
          end, "Blame Line")
        end,
      }

      return C
    end,
  },
  {
    "NeogitOrg/neogit",
    dependencies = {
      "nvim-lua/plenary.nvim", -- required
      "nvim-telescope/telescope.nvim", -- optional
      "sindrets/diffview.nvim", -- optional
    },
    keys = {
      { "<leader>gg", "<cmd>Neogit<CR>", desc = "Git" },
      { "<leader>gdd", "<cmd>DiffviewOpen<CR>", desc = "Git Diff Open" },
      { "<leader>gdc", "<cmd>DiffviewClose<CR>", desc = "Git Diff Close" },
      { "<leader>gdh", "<cmd>DiffviewFileHistory %<CR>", desc = "Git Diff Current File History" },
      { "<leader>gda", "<cmd>DiffviewFileHistory<CR>", desc = "Git Diff All File History" },
      { "<leader>gp", "<cmd>Neogit push<CR>", desc = "Git Push" },
    },
    config = function()
      require("neogit").setup()
    end,
  },
  -- Manage GitHub issues and PRs
  {
    "pwntester/octo.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope.nvim",
      "nvim-tree/nvim-web-devicons",
    },
    cmd = "Octo",
    config = function()
      require("octo").setup({
        enable_builtin = true,
      })
    end,
    keys = {
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
    },
  },
}
