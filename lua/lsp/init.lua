local lsp = require('lsp-zero')
lsp.preset('recommended')

local cmp = require('cmp')
local cmp_select = {behavior = cmp.SelectBehavior.Select}
local cmp_mappings = lsp.defaults.cmp_mappings({
      ['<C-b>'] = cmp.mapping.scroll_docs(-4),
      ['<C-f>'] = cmp.mapping.scroll_docs(4),
      ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
      ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
      ['<C-Space>'] = cmp.mapping.complete(),
      ['<Tab>'] = cmp.mapping.confirm({select = true}),
})
-- disable completion with tab
-- cmp_mappings['<Tab>'] = nil
-- cmp_mappings['<S-Tab>'] = nil

-- disable confirm with Enter key
-- cmp_mappings['<CR>'] = nil

lsp.setup_nvim_cmp({
  mapping = cmp_mappings
})
lsp.on_attach(function(client, bufnr)
  local opts = {buffer = bufnr, remap = false}
  
  vim.keymap.set("n", "<leader>gd", function() vim.lsp.buf.definition()end, opts)
  vim.keymap.set("n", "K", function() vim.lsp.buf.hover()end, opts)
  vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol()end, opts)
  vim.keymap.set("n", "<leader>vd", function() vim.lsp.buf.open_float()end, opts)
  vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next()end, opts)
  vim.keymap.set("n", "d]", function() vim.diagnostic.goto_prev()end, opts)
  vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action()end, opts)
  vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references()end, opts)
  vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename()end, opts)
  vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help()end, opts)
end)
-- --Enable (broadcasting) snippet capability for completion
-- local capabilities = vim.lsp.protocol.make_client_capabilities()
-- capabilities.textDocument.completion.completionItem.snippetSupport = true
--
-- require'lspconfig'.cssls.setup {
--   capabilities = capabilities,
-- }
lsp.setup() 

