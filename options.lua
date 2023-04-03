return {
  opt = {
    relativenumber = true,
    number = true,
    spell = false,
    signcolumn = "auto",
    wrap = true,
    showbreak = "↪ ",
    foldcolumn = "1",
    background = "dark",
    swapfile = false,
  },
  g = {
    mapleader = " ",
    autoformat_enabled = true,
    cmp_enabled = true,
    autopairs_enabled = true,
    diagnostics_enabled = true,
    status_diagnostics_enabled = true,
    icons_enabled = true,
    ui_notifications_enabled = true,
    heirline_bufferline = true,
    loaded_ruby_provider = 0,
    loaded_perl_provider = 0,
    clipboard = {
      name = "WslClipboard",
      copy = {
        ["+"] = "win32yank.exe -i --crlf",
        ["*"] = "win32yank.exe -i --crlf",
      },
      paste = {
        ["+"] = "win32yank.exe -o --lf",
        ["*"] = "win32yank.exe -o --lf",
      },
      cache_enabled = true,
    },
  },
}
