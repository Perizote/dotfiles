local null_ls = require('null-ls')
local augroup = vim.api.nvim_create_augroup('LspFormatting', {})

null_ls.setup({
  on_attach = function(client, bufnr)
        if client.supports_method('textDocument/formatting') then
            vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
            vim.api.nvim_create_autocmd('BufWritePre', {
                group = augroup,
                buffer = bufnr,
                callback = function()
                    vim.lsp.buf.format({
                      bufnr = bufnr,
                      filter = function(client)
                          return client.name == 'null-ls'
                      end
                  })
                end,
            })
        end
    end,
    sources = {
        null_ls.builtins.formatting.prettier,
        null_ls.builtins.formatting.black,
        null_ls.builtins.formatting.isort,
        null_ls.builtins.diagnostics.flake8,
        null_ls.builtins.diagnostics.mypy,
        null_ls.builtins.diagnostics.eslint,
        --[[ null_ls.builtins.completion.spell.with({ ]]
        --[[     filetypes = {'markdown', 'text'} ]]
        --[[ }), ]]
        null_ls.builtins.code_actions.gitsigns,
        null_ls.builtins.code_actions.eslint,
    },
})
