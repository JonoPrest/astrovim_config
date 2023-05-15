return {
  -- { "rescript-lang/vim-rescript" },
  { "nkrkv/nvim-treesitter-rescript" },
  {
    "folke/trouble.nvim",
    requires = "nvim-tree/nvim-web-devicons",
  },
  {
    "nvim-orgmode/orgmode",
    lazy = false,
    config = function()
      require("orgmode").setup_ts_grammar()

      -- Tree-sitter configuration
      require("nvim-treesitter.configs").setup {
        -- If TS highlights are not enabled at all, or disabled via ``disable`` prop, highlighting will fallback to default Vim syntax highlighting
        highlight = {
          enable = true,
          disable = { "org" }, -- Remove this to use TS highlighter for some of the highlights (Experimental)
          additional_vim_regex_highlighting = { "org" }, -- Required since TS highlighter doesn't support all syntax features (conceal)
        },
        ensure_installed = { "org" }, -- Or run :TSUpdate org
      }

      require("orgmode").setup {
        org_agenda_files = { "~/Library/CloudStorage/GoogleDrive-jjprest@gmail.com/My Drive/orgs/*", "~/my-orgs/**/*" },
        org_default_notes_file = "~/Library/CloudStorage/GoogleDrive-jjprest@gmail.com/My Drive/orgs/refile.org",
      }
    end,
  },
  {
    "kylechui/nvim-surround",
    tag = "*", -- Use for stability; omit to use `main` branch for the latest features
    config = function()
      require("nvim-surround").setup {
        -- Configuration here, or leave empty to use defaults
      }
    end,
  },
  {
    "VonHeikemen/searchbox.nvim",
    requires = {
      { "MunifTanjim/nui.nvim" },
    },
  },
  { "mg979/vim-visual-multi" },
}
