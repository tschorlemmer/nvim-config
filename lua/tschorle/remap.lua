vim.g.mapleader = " "
vim.keymap.set("n", "<leader>f", vim.cmd.Ex)
vim.keymap.set("i", "jj", "<Esc>")


vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("n", "<leader>j", "o<Esc>")
vim.keymap.set("n", "<leader>k", "O<Esc>")

vim.keymap.set("t", "jj", "<C-\\><C-n>")

vim.keymap.set("n", "<leader>q", ":q<CR>")
vim.keymap.set("n", "<leader>w", ":w<CR>")
vim.keymap.set("i", "<C-s>", "<Esc>:w<CR>a")

vim.keymap.set("n", "<C-J>", "<C-w>j")
vim.keymap.set("n", "<C-K>", "<C-w>k")
vim.keymap.set("n", "<C-H>", "<C-w>h")
vim.keymap.set("n", "<C-L>", "<C-w>l")


