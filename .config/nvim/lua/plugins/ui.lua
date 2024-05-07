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
      { '<leader><', '<cmd>BufferMovePrevious<CR>' },
      { '<leader>>', '<cmd>BufferMoveNext<CR>' },
      { '<leader>1', '<cmd>BufferGoto 1<CR>' },
      { '<leader>2', '<cmd>BufferGoto 2<CR>' },
      { '<leader>3', '<cmd>BufferGoto 3<CR>' },
      { '<leader>4', '<cmd>BufferGoto 4<CR>' },
      { '<leader>5', '<cmd>BufferGoto 5<CR>' },
      { '<leader>6', '<cmd>BufferGoto 6<CR>' },
      { '<leader>7', '<cmd>BufferGoto 7<CR>' },
      { '<leader>8', '<cmd>BufferGoto 8<CR>' },
      { '<leader>9', '<cmd>BufferGoto 9<CR>' },
      { '<leader>0', '<cmd>BufferLast<CR>' },
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
