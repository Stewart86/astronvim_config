return {
  {
    "rcarriga/nvim-notify",
    config = { background_colour = "#000000" },
  },
  { "eandrju/cellular-automaton.nvim", opt = true, cmd = "CellularAutomaton" },
  {
    "kylechui/nvim-surround",
    event = "BufEnter",
    config = true,
  },
  {
    "folke/todo-comments.nvim",
    event = "BufEnter",
    requires = "nvim-lua/plenary.nvim",
    config = true,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    auto_install = true,
  },
  {
    "nvim-treesitter/nvim-treesitter-context",
    requires = "nvim-treesitter/nvim-treesitter",
  },
  -- FIXME:
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   config = function() require("lsp_signature.nvim").setup() end,
  -- },
  -- TODO:
  -- {"mg979/vim-visual-multi"}
}
