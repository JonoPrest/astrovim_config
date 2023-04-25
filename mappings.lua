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
