return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup {
        ui = {
          border = "rounded",
        },
      }
    end,
  },
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
      { "<leader>gof",  "<cmd>CellularAutomaton game_of_life<CR>", desc = "game of life" },
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
    dependencies = {
      {
        "andymass/vim-matchup",
        init = function() vim.g.matchup_matchparen_deferred = 1 end,
      },
      {
        "HiPhish/nvim-ts-rainbow2",
        config = function()
          vim.api.nvim_create_autocmd({ "BufWritePost", "FocusGained" }, {
            callback = function()
              vim.cmd.TSDisable "rainbow"
              vim.cmd.TSEnable "rainbow"
            end,
          })
        end,
      },
    },
    opts = {
      auto_install = true,
      highlight = { disable = { "help" } },
      matchup = { enable = true },
      rainbow = { enable = true },
    },
  },
  {
    "nvim-treesitter/nvim-treesitter-context",
    dependencies = "nvim-treesitter/nvim-treesitter",
  },
  {
    "ray-x/lsp_signature.nvim",
    config = true,
    event = "InsertEnter",
  },

  -- {
  --   "HallerPatrick/py_lsp.nvim",
  --   event = "BufEnter",
  --   config = true,
  -- },
  -- TODO:
  -- {"mg979/vim-visual-multi"},
}
