return { -- overrides `require("mason-lspconfig").setup(...)`
  ensure_installed = {
    "cssls",
    "pyright",
    "rust_analyzer",
    "html",
    "jsonls",
    "tailwindcss",
    "grammarly",
    "tsserver",
    "sumneko_lua",
  },
}
