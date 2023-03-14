return {
  "ellisonleao/gruvbox.nvim",
  as = "gruvbox",
  config = function()
    require("gruvbox").setup {
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
  end,
}
