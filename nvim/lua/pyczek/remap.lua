
-- Setting leader to space
vim.g.mapleader = " "

-- Shortcuts

-- Explorer shortcut
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Terminal shortcut
vim.keymap.set("n", "<leader>term", vim.cmd.terminal)
-- Neotree  shortcut
vim.keymap.set("n", "<leader>tree",function ()
    vim.cmd.NvimTreeOpen() 
end)

vim.keymap.set("n", "<leader>bq", vim.cmd.BufferClose)
vim.keymap.set("n", "<leader>bn", vim.cmd.BufferNext)

vim.keymap.set("n", "<F5>", function()
    vim.cmd[[w]] 
    vim.cmd[[!./make]]
end)
