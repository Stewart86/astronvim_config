return {
  {
    "rcarriga/nvim-notify",
    config = { background_colour = "#000000" },
  },
  {
    "eandrju/cellular-automaton.nvim",
    opt = true,
    lazy = true,
    cmd = "CellularAutomaton",
    keys = {
      { "<leader>gof", "<cmd>CellularAutomaton game_of_life<CR>", desc = "game of life" },
      { "<leader>rain", "<cmd>CellularAutomaton make_it_rain<CR>", desc = "make it rain" },
    },
  },
  {
    "kylechui/nvim-surround",
    event = "BufEnter",
    config = true,
  },
  {
    "folke/todo-comments.nvim",
    event = "BufEnter",
    dependencies = "nvim-lua/plenary.nvim",
    config = true,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    auto_install = true,
  },
  {
    "nvim-treesitter/nvim-treesitter-context",
    dependencies = "nvim-treesitter/nvim-treesitter",
  },
  -- TODO:
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   config = function() require("lsp_signature.nvim").setup() end,
  -- },
  -- {"mg979/vim-visual-multi"},
  -- https://github.com/nvim-neotest/neotest
  -- { "nvim-neotest/neotest-python" },
  -- {"nvim-neotest/neotest-rust"},
  -- {"nvim-neotest/neotest-jest"},
  -- { "antoinemadec/FixCursorHold.nvim" },
  -- {
  --   "nvim-neotest/neotest",
  --   dependencies = {
  --     "nvim-lua/plenary.nvim",
  --     "nvim-treesitter/nvim-treesitter",
  --     "antoinemadec/FixCursorHold.nvim",
  --   },
  --   config = {
  --     adapters = {
  --       require "neotest-python" {
  --         dap = { justMyCode = true },
  --       },
  --     },
  --   },
  -- },
}
