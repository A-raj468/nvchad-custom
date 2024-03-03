---@type MappingsTable
local M = {}

M.general = {
    n = {
        [";"] = { ":", "enter command mode", opts = { nowait = true } },
        ["<C-q>"] = { "<CMD>qa<CR>", "Quit neovim" },
        ["<C-d>"] = { "<C-d>zz", "Moves half page Down" },
        ["<C-u>"] = { "<C-u>zz", "Moves half page Up" },
        ["<n>"] = { "<nzzzv", "" },
        ["<N>"] = { "Nzzzv", "" },
    },
    v = {
        [">"] = { ">gv", "indent" },
        ["<Up>"] = { ":m '<-2<CR>gv=gv", "Move selected block Up" },
        ["<Down>"] = { ":m '>+1<CR>gv=gv", "Move selected block Down" },
    },
    i = {
        ["<C-s>"] = { "<ESC><cmd> w <CR>", "save file" },
        ["<C-w>"] = {
            function()
                require("nvchad.tabufline").close_buffer()
            end,
            "close file",
        },
    },
}

-- more keybinds!

return M
