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
  {
    "someone-stole-my-name/yaml-companion.nvim",
    requires = {
      { "neovim/nvim-lspconfig" },
      { "nvim-lua/plenary.nvim" },
      { "nvim-telescope/telescope.nvim" },
    },
    config = function()
      require("telescope").load_extension "yaml_schema"
      local cfg = require("yaml-companion").setup {
        -- Built in file matchers
        builtin_matchers = {
          -- Detects Kubernetes files based on content
          kubernetes = { enabled = true },
          cloud_init = { enabled = true },
        },

        -- Additional schemas available in Telescope picker
        schemas = {
          --{
          --name = "Kubernetes 1.22.4",
          --uri = "https://raw.githubusercontent.com/yannh/kubernetes-json-schema/master/v1.22.4-standalone-strict/all.json",
          --},
          {
            name = "Envio Config",
            uri = "/Users/Jonathan/Coding/float/indexer/config-schema/config.schema.json",
          },
        },

        -- Pass any additional options that will be merged in the final LSP config
        lspconfig = {
          flags = {
            debounce_text_changes = 150,
          },
          settings = {
            redhat = { telemetry = { enabled = false } },
            yaml = {
              validate = true,
              format = { enable = true },
              hover = true,
              schemaStore = {
                enable = true,
                url = "https://www.schemastore.org/api/json/catalog.json",
              },
              schemaDownload = { enable = true },
              schemas = {},
              trace = { server = "debug" },
            },
          },
        },
      }
      require("lspconfig")["yamlls"].setup(cfg)
    end,
  },
}
