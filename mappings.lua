-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    ["<leader>bb"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bc"] = { "<cmd>BufferLinePickClose<cr>", desc = "Pick to close" },
    ["<leader>bj"] = { "<cmd>BufferLinePick<cr>", desc = "Pick to jump" },
    ["<leader>bt"] = { "<cmd>BufferLineSortByTabs<cr>", desc = "Sort by tabs" },
    -- page up and down with centre cursor
    ["<C-d>"] = { "<C-d>zz", desc = "page down with center cursor" },
    ["<C-u>"] = { "<C-u>zz", desc = "page up with center cursor" },
    --make it rain
    ["<leader>gof"] = { "<cmd>CellularAutomaton game_of_life<CR>", desc = "game of life" },
    ["<leader>rain"] = { "<cmd>CellularAutomaton make_it_rain<CR>", desc = "make it rain" },
    -- ufo mapping
    ["zR"] = { require("ufo").openAllFolds, desc = "open all fold with UFO" },
    ["zM"] = { require("ufo").closeAllFolds, desc = "close all fold with UFO" },
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
  v = {
    ["J"] = { ":m '>+1<CR>gv=gv", desc = "selection move up" },
    ["K"] = { ":m '<-2<CR>gv=gv", desc = "selection move down" },
  },
}
