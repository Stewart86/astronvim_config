return {
  { "folke/tokyonight.nvim" },
  {
    "sainnhe/gruvbox-material",
    as = "gruvbox-material",
  },
  {
    "ellisonleao/gruvbox.nvim",
    as = "gruvbox",
    opts = {
      undercurl = true,
      transparent_mode = true,
      overrides = {
        LineNr = {
          fg = "#9f5a00",
        },
        CursorLine = {
          bg = "NONE",
        },
      },
    }
  }
}
