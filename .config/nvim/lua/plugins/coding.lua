return {
  {
    'echasnovski/mini.nvim',
    version = false,
    event = 'VeryLazy',
    config = function()
      require('mini.ai').setup()
      require('mini.bracketed').setup()
      require('mini.surround').setup()
      require('mini.trailspace').setup()
    end,
  },

  {
    'numToStr/Comment.nvim',
    event = 'VeryLazy',
    config = function()
      require('Comment').setup()
    end,
  },

  {
    'windwp/nvim-autopairs',
    event = 'InsertEnter',
    config = function()
      require('nvim-autopairs').setup()
    end,
  },

  {
    'Wansmer/treesj',
    keys = {
      { '<leader>sj', function() require('treesj').toggle() end },
    },
  },

  {
    'lervag/vimtex',
    ft = 'tex',
    config = function()
      vim.g.vimtex_mappings_prefix = '<leader>l'
    end,
  },
}
