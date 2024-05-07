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
