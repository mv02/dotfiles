local lazygit

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
      direction = 'vertical',
      size = vim.o.columns * 0.4,
      float_opts = {
        border = 'curved',
      },
    },
    config = function(_, opts)
      require('toggleterm').setup(opts)
      local Terminal = require('toggleterm.terminal').Terminal
      lazygit = Terminal:new({ cmd = 'lazygit', direction = 'float' })
    end,
    keys = {
      { '<leader>gg', function() lazygit:toggle() end },
      { '<leader>tt', '<cmd>ToggleTerm<CR>' },
      { '<esc>', '<C-\\><C-n>', mode = 't' },
      { '<C-w>', '<C-\\><C-n><C-w>', mode = 't' },
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
}
