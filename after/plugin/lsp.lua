local lsp = require('lsp-zero').preset({
    name = 'minimal',
    set_lsp_keymaps = true,
    manage_nvim_cpm = true,
    suggest_lsp_server = false,
})

lsp.nvim_workspace()

lsp.setup()
