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
    "ray-x/lsp_signature.nvim",
    config = true,
    event = "InsertEnter",
  },
  {
    "f-person/git-blame.nvim",
    event = "BufEnter",
  },
  {
    "zbirenbaum/neodim",
    event = "LspAttach",
    opts = {
      alpha = 0.75,
      blend_color = "#000000",
      update_in_insert = {
        enable = true,
        delay = 100,
      },
      hide = {
        virtual_text = true,
        signs = true,
        underline = true,
      },
    },
  },
}
