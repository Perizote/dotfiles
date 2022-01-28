local null_ls = require('null-ls')

null_ls.setup({
    on_attach = function(client)
        if client.resolved_capabilities.document_formatting then
            vim.cmd([[
            augroup LspFormatting
                autocmd! * <buffer>
                autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()
            augroup END
            ]])
        end
    end,
    sources = {
        null_ls.builtins.formatting.prettier,
        null_ls.builtins.formatting.black,
        null_ls.builtins.formatting.isort,
        null_ls.builtins.diagnostics.flake8,
        null_ls.builtins.diagnostics.eslint,
        null_ls.builtins.completion.spell.with({
            filetypes = {'norg'}
        }),
        null_ls.builtins.code_actions.gitsigns,
        null_ls.builtins.code_actions.eslint,
    },
})
