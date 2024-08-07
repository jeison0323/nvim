vim.g.mapleader = " "
vim.keymap.set("n", "<leader>w", ":w<CR>")
vim.keymap.set('n', '<leader>ee', ':Ex<CR>')
vim.keymap.set("n", "<c-h>", "<c-w>h", { noremap = true, silent = true })
vim.keymap.set("n", "<c-l>", "<c-w>l", { noremap = true, silent = true })
vim.keymap.set("n", "<c-j>", "<c-w>j", { noremap = true, silent = true })
vim.keymap.set("n", "<c-k>", "<c-w>k", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>rr", ":%s/")

vim.keymap.set("n", "<Tab>", ":bnext<CR>", { noremap = true, silent = true })

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<c-u>", "<c-u>zz")
vim.keymap.set("n", "<c-d>", "<c-d>zz")
vim.keymap.set("n", "n", " nzzzv")
vim.keymap.set("n", "N", " Nzzzv")

vim.api.nvim_set_keymap('x', '>', ':><CR>gv', { noremap = true, silent = true })
vim.api.nvim_set_keymap('x', '<', ':<<CR>gv', { noremap = true, silent = true })

vim.keymap.set("x", "<leader>p", "\"_dp")

vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

vim.keymap.set("n", "<leader>d", "\"_d")
vim.keymap.set("v", "<leader>d", "\"_d")

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<leader>gs", vim.cmd.Git);

vim.keymap.set("n", "<leader>fo", ":LspZeroFormat<CR>")
