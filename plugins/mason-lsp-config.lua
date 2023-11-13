return {
  "williamboman/mason-lspconfig.nvim",
  setup = {
    ensure_installed = { "rescript-language-server" },
    automatic_installation = true,
  },
  lazy = false,
}
