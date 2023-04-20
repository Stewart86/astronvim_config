local get_hlgroup = require("astronvim.utils").get_hlgroup

local transparent = function(hl_groups)
  local c = {}
  for _, hl_group in ipairs(hl_groups) do
    c[hl_group] = vim.tbl_extend("force", get_hlgroup(hl_group), { bg = "NONE" })
  end
  return c
end

local hl = transparent {
  "CursorLine",
  "CursorLineNr",
  "DiagnosticSignError",
  "DiagnosticSignWarn",
  "DiagnosticSignInfo",
  "DiagnosticSignHint",
  "DiffAdd",
  "DiffAdded",
  "DiffChange",
  "DiffDelete",
  "DiffRemoved",
  "DiffText",
  "EndOfBuffer",
  "FloatBorder",
  "FloatermBorder",
  "FloatTitle",
  "FoldColumn",
  "Folded",
  "GitSignsAdd",
  "GitSignsChange",
  "GitSignsDelete",
  "LineNr",
  "NonText",
  "Normal",
  "NormalFloat",
  "NormalNC",
  "SignColumn",
  "StatusLine",
  "StatusLineNC",
  "TabLine",
  "TabLineFill",
  "TablineSel",
  "Winbar",
  "WinSeparator",
  -- Neotree colors
  "NeoTreeEndOfBuffer",
  "NeoTreeExpander",
  "NeoTreeGitAdded",
  "NeoTreeGitConflict",
  "NeoTreeGitDeleted",
  "NeoTreeGitIgnored",
  "NeoTreeGitModified",
  "NeoTreeGitStaged",
  "NeoTreeGitUnstaged",
  "NeoTreeGitUntracked",
  "NeoTreeHiddenByName",
  "NeoTreeIndentMarker",
  "NeoTreeNormal",
  "NeoTreeNormal",
  "NeoTreeNormalEndOfBuffer",
  "NeoTreeNormalNC",
  "NeoTreeNormalNC",
  "NeoTreeRootName",
  "NeoTreeSignColumn",
  "NeoTreeStatusLine",
  "NeoTreeStatusLineNC",
  "NeoTreeSymbolicLinkTarget",
  "NeoTreeTitleBar",
  "NeoTreeVertSplit",
  "NeoTreeWinSeparator",
  -- Telescope
  "TelescopeBorder",
}
if vim.o.background == "dark" then
  return hl
else
  return {}
end
