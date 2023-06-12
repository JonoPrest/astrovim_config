return {
  -- { "rescript-lang/vim-rescript" },
  { "nkrkv/nvim-treesitter-rescript", lazy = false },
  {
    "folke/trouble.nvim",
    requires = "nvim-tree/nvim-web-devicons",
    lazy = false,
  },
  {
    "VonHeikemen/searchbox.nvim",
    lazy = false,
    requires = {
      { "MunifTanjim/nui.nvim" },
    },
  },
  { "mg979/vim-visual-multi" },
}
