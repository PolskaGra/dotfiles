require("pyczek.set")
require("pyczek.remap")
vim.opt.termguicolors = true
require('nvim-ts-autotag').setup()
require('lualine').setup {
    options = { theme = 'gruvbox'}
}
--require('nvim-navic').setup()
require('stabline').setup()

