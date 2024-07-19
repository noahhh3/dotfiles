vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

--keep screen center for scrolling half pages
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "<C-d>", "<C-d>zz")


-- for searching
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")


-- system clipboard remaps
vim.keymap.set("n", "<leader>y", "\"_y")
vim.keymap.set("v", "<leader>y", "\"_y")
vim.keymap.set("n", "<leader>Y", "\"_Y")
