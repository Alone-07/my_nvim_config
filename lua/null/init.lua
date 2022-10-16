local null_ls = require('null-ls');

null_ls.setup({
    on_attch = function(client, bufnr)
        if client.serer_capabilities.documentFormattingProvider then
            vim.cmd('nnoremap <silent><buffer> <Leader>f :lua vim.lsp.buf.formatting()<CR>')

            --format on save
            vim.cmd('autocmd BufWritePost <buffer> lua vim.lsp.buf.fomatting()')
        end
        if client.server_capabilities.documentRangeFormattingProvider then
            vim.cmd("xnoremap <silent><buffer> <Leader>f :lua vim.lsp.buf.range_formatting({})<CR>" )
        end
    end,
})


