return {
  {
    'gruvbox-community/gruvbox',
    priority = 1000,
    config = function()
      vim.g.gruvbox_invert_selection = false
      vim.g.gruvbox_sign_column = 'none'
      vim.cmd('colorscheme gruvbox')
      vim.cmd('highlight CursorLineNr guibg=none')
    end,
  },

  {
    'kyazdani42/nvim-web-devicons',
    event = 'VeryLazy',
  },

  {
    'echasnovski/mini.starter',
    version = false,
    config = function()
      require('mini.starter').setup()
    end,
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
    'akinsho/toggleterm.nvim',
    version = '*',
    cmd = 'ToggleTerm',
    opts = {
      direction = 'float',
      float_opts = {
        border = 'curved',
      },
    },
    config = true,
    keys = {
      {
        '<leader>gg',
        function()
          local Terminal = require('toggleterm.terminal').Terminal
          local lazygit = Terminal:new({ cmd = 'lazygit' })
          lazygit:toggle()
        end,
      },
    },
  },
}
