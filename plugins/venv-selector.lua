return {
  "linux-cultist/venv-selector.nvim",
  dependencies = { "neovim/nvim-lspconfig", "nvim-telescope/telescope.nvim" },
  config = true,
  keys = {
    { "<leader>vs", "<cmd>:VenvSelect<cr>",       desc = "Select a Python Interpreter" },
    { "<leader>vc", "<cmd>:VenvSelectCached<cr>", desc = "Activate Python Interpreter from cache" }
  },
  opts = {
    search = false,
    search_workspace = false,
    fd_binary_name = "fdfind",
  },
}
