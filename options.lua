-- set vim options here (vim.<first_key>.<second_key> = value)
return {
  opt = {
    -- set to true or false etc.
    relativenumber = true, -- sets vim.opt.relativenumber
    number = true,         -- sets vim.opt.number
    spell = false,         -- sets vim.opt.spell
    signcolumn = "auto",   -- sets vim.opt.signcolumn to auto
    wrap = false,          -- sets vim.opt.wrap
    foldcolumn = "1",
    foldlevel = 99,
    foldlevelstart = 99,
    foldenable = true,
    fillchars = [[eob: ,fold: ,foldopen:,foldsep: ,foldclose:]],
    -- foldexpr = "nvim_treesitter#foldexpr()", -- set Treesitter based folding
    -- foldmethod = "expr",
  },
  g = {
    mapleader = " ",                   -- sets vim.g.mapleader
    autoformat_enabled = true,         -- enable or disable auto formatting at start (lsp.formatting.format_on_save must be enabled)
    cmp_enabled = true,                -- enable completion at start
    autopairs_enabled = true,          -- enable autopairs at start
    diagnostics_enabled = true,        -- enable diagnostics at start
    status_diagnostics_enabled = true, -- enable diagnostics in statusline
    icons_enabled = true,              -- disable icons in the UI (disable if no nerd font is available, requires :PackerSync after changing)
    ui_notifications_enabled = true,   -- disable notifications when toggling UI elements
    heirline_bufferline = true,        -- enable new heirline based bufferline (requires :PackerSync after changing)
    loaded_ruby_provider = 0,          -- disable ruby provider
    loaded_perl_provider = 0,          -- disable perl provider
    clipboard = {
      name = "WslClipboard",
      copy = { ["+"] = "clip.exe",["*"] = "clip.exe" },
      paste = {
        ["+"] = 'powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
        ["*"] = 'powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r",""))',
      },
      cache_enabled = 0,
    },
  },
}
-- If you need more control, you can use the function()...end notation
-- options = function(local_vim)
--   local_vim.opt.relativenumber = true
--   local_vim.g.mapleader = " "
--   local_vim.opt.whichwrap = vim.opt.whichwrap - { 'b', 's' } -- removing option from list
--   local_vim.opt.shortmess = vim.opt.shortmess + { I = true } -- add to option list
--
--   return local_vim
-- end,
