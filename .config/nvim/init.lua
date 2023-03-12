local o = vim.o
local g = vim.g
o.cursorline = true
o.cursorlineopt = 'number'
o.expandtab = true
g.mapleader = ' '
o.number = true
o.relativenumber = true
o.shiftwidth = 2
o.showmode = false
o.signcolumn = 'yes'
o.tabstop = 2
o.termguicolors = true
o.wrap = false

vim.keymap.set('n', '<CR>', ':')
vim.keymap.set('n', '<S-CR>', '<CR>')
vim.keymap.set('n', '<C-s>', '<cmd>w<CR>')
vim.keymap.set('n', '<leader>qq', '<cmd>qa<CR>')
vim.keymap.set('n', '<leader>tw', function() o.wrap = not o.wrap end )
vim.keymap.set('n', '<leader>tl', function() o.relativenumber = not o.relativenumber end )

local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable', -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require('lazy').setup('plugins', {
  install = {
    colorscheme = { 'gruvbox' },
  },
})
