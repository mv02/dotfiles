local lazygit

return {
  -- Theme
  {
    'ellisonleao/gruvbox.nvim',
    priority = 1000,
    config = function()
      require('config.colorscheme')
      vim.cmd('colorscheme gruvbox')
    end,
  },

  -- Treesitter
  {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    event = 'BufReadPre',
    config = function()
      require('plugins.treesitter')
    end,
  },

  -- LSP and completion
  {
    'neovim/nvim-lspconfig',
    dependencies = {
      "mason.nvim",
      "williamboman/mason-lspconfig.nvim",
      "hrsh7th/cmp-nvim-lsp",
    },
  },
  {
    "williamboman/mason.nvim",
    cmd = "Mason",
    keys = {
      { "<leader>cm", "<cmd>Mason<cr>", desc = "Mason" },
    },
  },
  {
    'hrsh7th/nvim-cmp',
    event = 'InsertEnter',
    config = function()
      require('plugins.cmp')
    end,
    dependencies = {
      { 'hrsh7th/cmp-nvim-lsp' },
      { 'hrsh7th/cmp-nvim-lsp-signature-help' },
      { 'saadparwaiz1/cmp_luasnip' },
      {
        'L3MON4D3/LuaSnip',
        dependencies = 'rafamadriz/friendly-snippets',
        build = 'make install_jsregexp',
        config = function()
          require('luasnip.loaders.from_vscode').lazy_load()
        end,
      },
      { 'hrsh7th/cmp-calc' },
      { 'hrsh7th/cmp-buffer' },
      { 'hrsh7th/cmp-path' },
    },
  },

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
    'nvim-telescope/telescope.nvim',
    branch = '0.1.x',
    dependencies = { 'nvim-lua/plenary.nvim' },
    cmd = 'Telescope',
    keys = {
      { '<leader>fb', function() require('telescope.builtin').buffers() end },
      { '<leader>ff', function() require('telescope.builtin').find_files() end },
      { '<leader>fF', function() require('telescope.builtin').git_files() end },
      { '<leader>fr', function() require('telescope.builtin').oldfiles() end },
      { '<leader>gc', function() require('telescope.builtin').git_commits() end },
      { '<leader>gs', function() require('telescope.builtin').git_status() end },
      { '<leader>sb', function() require('telescope.builtin').current_buffer_fuzzy_find() end },
      { '<leader>sc', function() require('telescope.builtin').command_history() end },
      { '<leader>sC', function() require('telescope.builtin').commands() end },
      { '<leader>sd', function() require('telescope.builtin').diagnostics() end },
      { '<leader>sg', function() require('telescope.builtin').live_grep() end },
      { '<leader>sh', function() require('telescope.builtin').help_tags() end },
      { '<leader>sm', function() require('telescope.builtin').marks() end },
      { '<leader>sM', function() require('telescope.builtin').man_pages() end },
      { '<leader>so', function() require('telescope.builtin').vim_options() end },
      { '<leader>sr', function() require('telescope.builtin').lsp_references() end },
      { '<leader>ss', function() require('telescope.builtin').lsp_document_symbols() end },
      { '<leader>sS', function() require('telescope.builtin').lsp_workspace_symbols() end },
      { '<leader>sw', function() require('telescope.builtin').grep_string() end },
    },
    config = function()
      require('plugins.telescope')
    end,
  },
  {
    'folke/trouble.nvim',
    cmd = { 'TroubleToggle', 'Trouble' },
    keys = {
      { '<leader>xx', function() require('trouble').toggle('workspace_diagnostics') end },
      { '<leader>xq', function() require('trouble').toggle('quickfix') end },
      { '<leader>xl', function() require('trouble').toggle('loclist') end },
    },
    config = function()
      require('plugins.trouble')
    end,
  },
  {
    'akinsho/toggleterm.nvim',
    version = '*',
    cmd = 'ToggleTerm',
    keys = {
      { '<leader>gg', function() lazygit:toggle() end },
      { '<leader>tt', '<cmd>ToggleTerm<CR>' },
      { '<esc>', '<C-\\><C-n>', mode = 't' },
      { '<C-w>', '<C-\\><C-n><C-w>', mode = 't' },
    },
    config = function()
      require('plugins.toggleterm')
      local Terminal = require('toggleterm.terminal').Terminal
      lazygit = Terminal:new({ cmd = 'lazygit', direction = 'float' })
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
    'echasnovski/mini.starter',
    version = false,
    config = function()
      require('mini.starter').setup()
    end,
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
    'dstein64/vim-startuptime',
    cmd = 'StartupTime',
  },
  {
    'andweeb/presence.nvim',
    event = 'VeryLazy',
  },
  {
    'j-hui/fidget.nvim',
    event = { 'BufReadPre', 'BufNewFile' },
    config = function()
      require('fidget').setup()
    end,
  },
  {
    'lewis6991/gitsigns.nvim',
    event = { 'BufReadPre', 'BufNewFile' },
    config = function()
      require('gitsigns').setup()
    end,
  },
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

  -- DAP
  {
    'mfussenegger/nvim-dap',
    dependencies = { 'rcarriga/nvim-dap-ui' },
    config = function()
      require('plugins.dap')
    end,
    keys = {
      { '<F5>', function() require('dap').continue() end },
      { '<F6>', function() require('dap').close() end },
      { '<F9>', function() require('dap').toggle_breakpoint() end },
      { '<F10>', function() require('dap').step_over() end },
      { '<F11>', function() require('dap').step_into() end },
      { '<F12>', function() require('dap').step_out() end },
    },
  },
  {
    'rcarriga/nvim-dap-ui',
    config = function()
      require('dapui').setup()
    end,
    keys = {
      { '<leader>dd', function() require('dapui').toggle() end },
    },
  },
}
