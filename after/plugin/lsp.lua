vim.api.nvim_create_autocmd('LspAttach', {
    desc = 'LSP actions',
    callback = function(ev)
        local opts = { buffer = ev.buf }
        vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)                         -- show docs
        vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, opts)               -- rename

        vim.keymap.set('n', '<leader>fmt', vim.lsp.buf.format, opts)              -- format

        vim.keymap.set('n', '<leader>gd', vim.lsp.buf.declaration, opts)          -- go to declaration
        vim.keymap.set('n', '<leader>gt', vim.lsp.buf.definition, opts)           -- go to definiton
        vim.keymap.set('n', '<leader>gi', vim.lsp.buf.implementation, opts)       -- go to implementation

        vim.keymap.set('n', '<leader>ref', vim.lsp.buf.references, opts)          -- references
        vim.keymap.set('n', '<leader>sca', vim.lsp.buf.code_action, opts)         -- show code actions

        vim.keymap.set('n', '<leader>en', GoToNextDiagnostic, opts)               -- error next
        vim.keymap.set('n', '<leader>ep', GoToPrevDiagnostic, opts)               -- error prev

        vim.keymap.set('n', '<leader>ed', "<cmd>Telescope diagnostics<cr>", opts) -- error diagnostics
    end
})

vim.lsp.config('jdtls', {
  cmd = { 'jdtls' },
  filetypes = { 'java' },
  capabilities = capabilities,
})

vim.lsp.enable 'jdtls'
