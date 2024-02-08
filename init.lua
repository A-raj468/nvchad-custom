-- local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })

vim.cmd "set expandtab"
vim.cmd "set tabstop=4"
vim.cmd "set shiftwidth=4"
vim.cmd "set softtabstop=4"
vim.opt.relativenumber = true
