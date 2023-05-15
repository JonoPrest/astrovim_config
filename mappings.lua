local astronvim = require "core.utils"

return {
  -- first key is the mode
  n = {
    --Undo
    ["<C-z>"] = { "u", desc = "Undo" },

    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    ["<leader>bb"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bc"] = { "<cmd>BufferLinePickClose<cr>", desc = "Pick to close" },
    ["<leader>bj"] = { "<cmd>BufferLinePick<cr>", desc = "Pick to jump" },
    ["<leader>bt"] = { "<cmd>BufferLineSortByTabs<cr>", desc = "Sort by tabs" },
    -- Astro reload
    ["<leader>ar"] = { "<cmd>AstroReload<cr>", desc = "AstroReload" },
    ["<leader>au"] = { "<cmd>AstroUpdate<cr>", desc = "AstroUpdate" },
    ["<leader>av"] = { "<cmd>AstroVersion<cr>", desc = "AstroVersion" },
    -- Move between windows
    ["<A-N>"] = { function() require("smart-splits").move_cursor_left() end, desc = "Move to left split" },
    ["<A-E>"] = { function() require("smart-splits").move_cursor_down() end, desc = "Move to below split" },
    ["<A-I>"] = { function() require("smart-splits").move_cursor_up() end, desc = "Move to above split" },
    ["<A-O>"] = { function() require("smart-splits").move_cursor_right() end, desc = "Move to right split" },
    --   -- Resize with arrows
    ["<S-Up>"] = { function() require("smart-splits").resize_up() end, desc = "Resize split up" },
    ["<S-Down>"] = { function() require("smart-splits").resize_down() end, desc = "Resize split down" },
    ["<S-Left>"] = { function() require("smart-splits").resize_left() end, desc = "Resize split left" },
    ["<S-Right>"] = { function() require("smart-splits").resize_right() end, desc = "Resize split right" },
    --Use alt move line like vscode
    ["<A-Down>"] = { ":m .+2<CR>==", desc = "Move line down" },
    ["<A-Up>"] = { " :m .-2<CR>==", desc = "Move line up" },
    ["<A-S-Down>"] = { " ==yyp", desc = "Copy line down" },
    ["<A-S-Up>"] = { " ==yyP", desc = "Copy line up" },
    --Toggleterm
    ["<C-'>"] = { ":ToggleTerm<CR>", desc = "toggle terminal" },
    ["<C-`>"] = { ":ToggleTerm<CR>", desc = "toggle terminal" },

    ["<A-o>"] = { "<cmd>bnext<cr>", desc = "Next buffer" },
    ["<A-n>"] = { "<cmd>bprevious<cr>", desc = "Previous buffer" },

    --Telescope
    ["<leader>fr"] = { ":Telescope resume<cr>", desc = "Telescope resume" },

    --Trouble.nvim
    ["<leader>xx"] = { ":TroubleToggle<cr>", desc = "TroubleToggle" },
    ["<leader>xw"] = { ":TroubleToggle workspace_diagnostics<cr>", desc = "TroubleToggle workspace_diagnostics" },
    ["<leader>xd"] = { ":TroubleToggle document_diagnostics<cr>", desc = "TroubleToggle document_diagnostics" },
    ["<leader>xq"] = { ":TroubleToggle quickfix<cr>", desc = "TroubleToggle quickfix" },
    ["<leader>xl"] = { ":TroubleToggle loclist<cr>", desc = "TroubleToggle loclist" },
    ["<leader>xr"] = { ":TroubleToggle lsp_references<cr>", desc = "TroubleToggle lsp_references" },
    ["<leader>xn"] = {
      function() require("trouble").next { skip_groups = true, jump = true } end,
      desc = "Trouble next (API)",
    },
    ["<leader>xN"] = {
      function() require("trouble").previous { skip_groups = true, jump = true } end,
      desc = "Trouble previous (API)",
    },

    --NeoTree
    ["<leader>n"] = { ":Neotree focus<cr>", desc = "Neotree focus" },
    --Searchbox
    ["<leader>sf"] = { ":SearchBoxMatchAll<cr>", desc = "Search All Matches (SearchBoxMatchAll)" },
    ["<leader>ss"] = { ":SearchBoxIncSearch<cr>", desc = "Search Nearest Match (SearchBoxIncSearch)" },
    ["<leader>sr"] = { ":SearchBoxReplace confirm=menu<cr>", desc = "Search And Replace (SearchBoxReplace)" },
    ["<leader>soe"] = { ":SearchBoxReplace confirm=menu<cr> exact=true", desc = "Exact Search And Replace (SearchBoxReplace)" },
    ["<leader>soi"] = { ":SearchBoxReplace confirm=menu<cr> modifier=case-sensitive", desc = "Exact Search And Replace (SearchBoxReplace)" },
  },
  i = {
    ["<C-z>"] = { "<Esc>u", desc = "Undo" },
    --Use alt move line like vscode n
    ["<A-Down>"] = { " <Esc>:m .+1<CR>==gi", desc = "Move line down" },
    ["<A-Up>"] = { "<Esc>:m .-2<CR>==gi", desc = "Move line up" },
    ["<A-S-Down>"] = { " <Esc> ==yypi", desc = "Copy line down" },
    ["<A-S-Up>"] = { " <Esc> ==yyPi", desc = "Cop line up" },
    --Toggleterm
    ["<C-`>"] = { "<Esc>:ToggleTerm<CR>", desc = "toggle terminal" },
    ["<C-'>"] = { "<Esc>:ToggleTerm<CR>", desc = "toggle terminal" },
  },
  v = {
    --Undo
    ["<C-z>"] = { "<Esc>u", desc = "Undo" },
    --Use alt move line like vscode n
    ["<A-Down>"] = { ":m '>+1<CR>gv=gv", desc = "Move selection lines down" },
    ["<A-Up>"] = { ":m '<-2<CR>gv=gv", desc = "Move selection lines up" },
    ["<A-S-Down>"] = { " : '<,'>yank<CR>Pgv=gv", desc = "Copy selectino lines down" },
    ["<A-S-Up>"] = { " : '<,'>yank<CR>`]pgv=gv", desc = "Copy selectino lines up" },
    --Toggleterm
    ["<C-'>"] = { ":ToggleTerm<CR>", desc = "toggle terminal" },
    ["<C-`>"] = { ":ToggleTerm<CR>", desc = "toggle terminal" },
    --Searchbox
    --
    --From the DOCS:
    --
    --Search arguments
    -- You can tweak the behaviour of the search if you pass any of these properties:
    --
    -- reverse: Look for matches above the cursor.
    -- exact: Look for an exact match.
    -- title: Set title for the popup window.
    -- prompt: Set input prompt.
    -- default_value: Set initial value for the input.
    -- visual_mode: Search only in the recently selected text.
    -- show_matches: If set to true it'll show number of matches in the input. If set to a string the pattern {total} will be replaced with the number of matches. If the pattern {match} is found it'll be replaced with the index of match under the cursor. You can set for example, show_matches='[M:{match} T:{total}]'. The default format of the message is [{match}/{total}].
    -- modifier: Apply a "search modifier" at the beginning of the search pattern. It won't be visible in the search input. Possible values:
    -- ignore-case: Make the search case insensitive. Applies the pattern \c.
    -- case-sensitive: Make the search case sensitive. Applies the pattern \C.
    -- no-magic: Act as if the option nomagic is used. Applies the pattern \M.
    -- magic: Act as if the option magic is on. Applies the pattern \m.
    -- very-magic: Anything that isn't alphanumeric has a special meaning. Applies the pattern \v.
    -- very-no-magic: Only the backslash and the terminating character has special meaning. Applies the pattern \V.
    -- plain: Is an alias for very-no-magic.
    -- disabled: Is the default. Don't apply any modifier.
    -- :: It acts as a prefix. Use it to add your own modifier to the search. Example, :\C\V will make the search very-no-magic and also case sensitive. See :help /magic to know more about possible patterns.
    -- Other arguments are exclusive to one type of search.
    --
    -- For match_all:
    --
    -- clear_matches: Get rid of the highlight after the search is done.
    -- For replace:
    --
    -- confirm: Ask the user to choose an action on each match. There are three possible values: off, native and menu. off disables the feature. native uses neovim's built-in confirm method. menu displays a list of possible actions below the match. Is worth mentioning menu will only show up if neovim's window is big enough, confirm type will fallback to "native" if it isn't.
    ["<leader>sf"] = { ":SearchBoxMatchAll visual_mode=true<cr>", desc = "Search All Matches (SearchBoxMatchAll)" },
    ["<leader>ss"] = { ":SearchBoxIncSearch visual_mode=true<cr>", desc = "Search Nearest Match (SearchBoxIncSearch)" },
    ["<leader>sr"] = { ":SearchBoxReplace visual_mode=true confirm=menu<cr>", desc = "Search And Replace (SearchBoxReplace)" },
  },
  t = {
    -- setting a mapping to false will disable it
    -- Disabling because it messes with toggleterm
    -- ["<esc>"] = { "<C-\\><C-N>", desc = "Enter normal mode from a terminal sessino" },
    --Toggleterm
    ["<C-`>"] = { "<esc><cmd>ToggleTerm<CR>", desc = "toggle terminal" },
    ["<C-'>"] = { "<esc><cmd>ToggleTerm<CR>", desc = "toggle terminal" },
    -- Move between windows
    ["<A-n>"] = { function() require("smart-splits").move_cursor_left() end, desc = "Move to left split" },
    ["<A-e>"] = { function() require("smart-splits").move_cursor_down() end, desc = "Move to below split" },
    ["<A-i>"] = { function() require("smart-splits").move_cursor_up() end, desc = "Move to above split" },
    ["<A-o>"] = { function() require("smart-splits").move_cursor_right() end, desc = "Move to right split" },
    --   -- Resize with arrows
    ["<S-Up>"] = { function() require("smart-splits").resize_up() end, desc = "Resize split up" },
    ["<S-Down>"] = { function() require("smart-splits").resize_down() end, desc = "Resize split down" },
    ["<S-Left>"] = { function() require("smart-splits").resize_left() end, desc = "Resize split left" },
    ["<S-Right>"] = { function() require("smart-splits").resize_right() end, desc = "Resize split right" },
  },
}
