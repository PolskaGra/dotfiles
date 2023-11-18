
-- Setting leader to space
vim.g.mapleader = " "

-- Shortcuts

-- Explorer shortcut
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Terminal shortcut
vim.keymap.set("n", "<leader>term", vim.cmd.terminal)

-- Neotree  shortcut
vim.keymap.set("n", "<leader>nt", vim.cmd.Neotree)
