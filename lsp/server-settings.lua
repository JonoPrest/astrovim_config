return {
  -- example for addings schemas to yamlls
  yamlls = {
    -- override table for require("lspconfig").yamlls.setup({...})
    settings = {
      yaml = {
        schemas = {
          ["/Users/Jonathan/Coding/float/indexer/config-schema/config.schema.json"] = ".github/workflows/*.{yml,yaml}",
          --         ["http://json.schemastore.org/github-action"] = ".github/action.{yml,yaml}",
          --         ["http://json.schemastore.org/ansible-stable-2.9"] = "roles/tasks/*.{yml,yaml}",
        },
      },
    },
  },
}
