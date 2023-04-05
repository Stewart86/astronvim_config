return function()
  local get_hlgroup = require("astronvim.utils").get_hlgroup
  local cursor_nr = get_hlgroup "GruvboxOrangeSign"
  local line_nr = get_hlgroup "GruvboxBg4"
  local winbar = get_hlgroup "Winbar"
  local bg = "NONE"
  return {
    Winbar = { fg = winbar.fg, bg = bg },
    FoldColumn = { fg = line_nr.fg, bg = bg },
    LineNr = { fg = line_nr.fg, bg = bg },
    CursorLineNr = { fg = cursor_nr.fg, bg = bg },
    NormalFloat = { bg = bg },
    TreeSitterContextBottom = { sp = "#555555" },
  }
end
