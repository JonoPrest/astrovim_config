return function()
  return {
    cmd = {
      "rescript-language-server",
      "--stdio",
    },
    filetypes = { "rescript" },
    root_dir = require("lspconfig.util").root_pattern "bsconfig.json",
  }
end
