return {
  "numToStr/Comment.nvim",
  -- keys = {
  --   {
  --     "gc",
  --     mode = { "n", "v" },
  --     desc = "Comment toggle linewise",
  --   },
  --   {
  --     "gb",
  --     mode = { "n", "v" },
  --     desc = "Comment toggle blockwise",
  --   },
  -- },
  config = function()
    require("Comment").setup()
    local ft = require "Comment.ft"
    ft.set("rescript", { "//%s", "/*%s*/" })

    local commentstring_avail, commentstring = pcall(require, "ts_context_commentstring.integrations.comment_nvim")
    return commentstring_avail and commentstring and {
      pre_hook = commentstring.create_pre_hook(),
    } or {}
  end,
  lazy = false,
}
