vim.lsp.config("jdtls", {
    cmd = {"jdtls"},
    filetypes = {"java"},
    capabilities = capabilities,
})

vim.lsp.enable("jdtls")
