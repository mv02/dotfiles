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
