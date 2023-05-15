return {
  -- first key is the mode, n == normal mode
  n = {
    -- second key is the prefix, <leader> prefixes
    ["<leader>"] = {
      -- third key is the key to bring up next level and its displayed
      -- group name in which-key top level menu
      ["b"] = { name = "Buffer" },
      ["a"] = { name = "Astro" },
      ["x"] = { name = "Trouble" },
      ["o"] = { name = "Orgmode" },
      ["s"] = { 
        name = "SearchBox Options",
        ["o"] = {name= "Options"}
      },
    },
  },
  v = {
    -- second key is the prefix, <leader> prefixes
    ["<leader>"] = {
      ["s"] = { name = "Search"},
    },
  },
}
