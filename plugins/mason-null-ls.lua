-- use mason-null-ls to configure Formatters/Linter installation for null-ls sources
return { -- overrides `require("mason-null-ls").setup(...)`
  ensure_installed = { "markdownlint", "prettierd" },
  -- ensure_installed = { "prettier", "stylua" },
}
