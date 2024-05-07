return {
  {
    'nvim-neo-tree/neo-tree.nvim',
    branch = 'v2.x',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'kyazdani42/nvim-web-devicons',
      'MunifTanjim/nui.nvim',
    },
    cmd = 'Neotree',
    keys = {
      { '<leader>fe', '<cmd>NeoTreeRevealToggle<CR>' },
    },
    opts = {
      window = { position = 'right' },
    },
  },

  {
    'nvim-lualine/lualine.nvim',
    event = 'VeryLazy',
    opts = {
      options = {
        disabled_filetypes = { 'neo-tree', 'Trouble' },
      },
    },
  },

  {
    'romgrk/barbar.nvim',
    dependencies = {
      'lewis6991/gitsigns.nvim',
      'nvim-tree/nvim-web-devicons',
    },
    event = 'VeryLazy',
    keys = {
      { '<leader>p', '<cmd>BufferPick<CR>' },
      { '<leader>bd', '<cmd>BufferClose<CR>' },
      { '<leader>bp', '<cmd>BufferPin<CR>' },
      { '<A-<>', '<cmd>BufferMovePrevious<CR>' },
      { '<A->>', '<cmd>BufferMoveNext<CR>' },
      { '<A-1>', '<cmd>BufferGoto 1<CR>' },
      { '<A-2>', '<cmd>BufferGoto 2<CR>' },
      { '<A-3>', '<cmd>BufferGoto 3<CR>' },
      { '<A-4>', '<cmd>BufferGoto 4<CR>' },
      { '<A-5>', '<cmd>BufferGoto 5<CR>' },
      { '<A-6>', '<cmd>BufferGoto 6<CR>' },
      { '<A-7>', '<cmd>BufferGoto 7<CR>' },
      { '<A-8>', '<cmd>BufferGoto 8<CR>' },
      { '<A-9>', '<cmd>BufferGoto 9<CR>' },
      { '<A-0>', '<cmd>BufferLast<CR>' },
    },
  },

  {
    'numToStr/Navigator.nvim',
    config = function()
      require('Navigator').setup()
    end,
    keys = {
      { '<C-h>', function() require('Navigator').left() end, mode = { 'n', 't' } },
      { '<C-j>', function() require('Navigator').down() end, mode = { 'n', 't' } },
      { '<C-k>', function() require('Navigator').up() end, mode = { 'n', 't' } },
      { '<C-l>', function() require('Navigator').right() end, mode = { 'n', 't' } },
    },
  },

  {
    'lewis6991/gitsigns.nvim',
    event = { 'BufReadPre', 'BufNewFile' },
    config = function()
      require('gitsigns').setup()
    end,
  },

  {
    'andweeb/presence.nvim',
    event = 'VeryLazy',
  },
}
