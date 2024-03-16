local o = vim.o

vim.keymap.set('n', '<CR>', ':')
vim.keymap.set('n', '<S-CR>', '<CR>')
vim.keymap.set('n', '<C-s>', '<cmd>w<CR>')

vim.keymap.set('n', '<leader>qq', '<cmd>qa<CR>')

vim.keymap.set('n', '<leader>mm', '<cmd>silent make<CR>')

vim.keymap.set('n', '<leader>tw', function() o.wrap = not o.wrap end )
vim.keymap.set('n', '<leader>tl', function() o.relativenumber = not o.relativenumber end )
vim.keymap.set('n', '<leader>ts', function()
  if o.tabstop == 4 then
    o.tabstop = 2
  else
    o.tabstop = 4
  end
  o.shiftwidth = o.tabstop
end)

-- LSP
vim.keymap.set('n', 'gd', vim.lsp.buf.definition)
vim.keymap.set('n', 'gD', vim.lsp.buf.declaration)
vim.keymap.set('n', 'gr', vim.lsp.buf.references)
vim.keymap.set('n', 'gi', vim.lsp.buf.implementation)
vim.keymap.set('n', 'K', vim.lsp.buf.hover)
vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action)
vim.keymap.set('n', '<leader>cr', vim.lsp.buf.rename)
