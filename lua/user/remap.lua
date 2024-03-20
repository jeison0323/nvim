vim.g.mapleader = " "
vim.keymap.set("n", "<leader>w", ":w<CR>")
vim.api.nvim_set_keymap('n', '<leader>ee', ':NvimTreeToggle<CR>', {noremap = true, silent = true})
vim.keymap.set("n", "<c-h>", "<c-w>h", {noremap = true, silent = true})
vim.keymap.set("n", "<c-l>", "<c-w>l", {noremap = true, silent = true})
vim.keymap.set("n", "<c-j>", "<c-w>j", {noremap = true, silent = true})
vim.keymap.set("n", "<c-k>", "<c-w>k", {noremap = true, silent = true})

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '>-2<CR>gv=gv")

vim.keymap.set("n", "n", " nzzzv")
vim.keymap.set("n", "N", " Nzzzv")

vim.keymap.set("x", "<leader>p", "\"_dp")

vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

vim.keymap.set("n", "<leader>d", "\"_d")
vim.keymap.set("v", "<leader>d", "\"_d")

vim.keymap.set("n", "Q", "<nop>")

