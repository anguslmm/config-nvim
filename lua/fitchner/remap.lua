vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex, {desc = "Show netrw"})

-- Window operations
vim.keymap.set("n", "<leader>wh", "<cmd>wincmd h<CR>", {desc = "Switch window to the left"})
vim.keymap.set("n", "<leader>wj", "<cmd>wincmd j<CR>", {desc = "Switch window down"})
vim.keymap.set("n", "<leader>wk", "<cmd>wincmd k<CR>", {desc = "Switch window up"})
vim.keymap.set("n", "<leader>wl", "<cmd>wincmd l<CR>", {desc = "Switch window to the right"})
vim.keymap.set("n", "<leader>ws", "<cmd>split<CR>", {desc = "Split window with a horizontal line"})
vim.keymap.set("n", "<leader>wv", "<cmd>vsplit<CR>", {desc = "Split window with a vertical line"})
vim.keymap.set("n", "<leader>wc", "<cmd>close<CR>", {desc = "Close the curent window"})
vim.keymap.set("n", "<leader>wc", "<cmd>close<CR>", {desc = "Close the curent window"})
vim.keymap.set("n", "<leader>w=", "<cmd>wincmd =<CR>", {desc = "Equalize window sizes"})
