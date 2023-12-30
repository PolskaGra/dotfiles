local lsp = require("lsp-zero")
lsp.preset("recommended")

lsp.ensure_installed({
  'tsserver',
  'rust_analyzer',
})

-- Fix Undefined global 'vim'
lsp.nvim_workspace()

--lsp.setup_nvim_cmp({
--  mapping = cmp_mappings
--})

lsp.set_sign_icons({
    error = '',
    warn = '▲',
    hint = '⚑',
    info = '»',
})

lsp.setup()

vim.diagnostic.config({
    virtual_text = true
})
