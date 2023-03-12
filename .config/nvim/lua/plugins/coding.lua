return {
  {
    'L3MON4D3/LuaSnip',
    version = '<CurrentMajor>.*',
    build = "make install_jsregexp",
    dependencies = {
      {
        'rafamadriz/friendly-snippets',
        config = function()
          require('luasnip.loaders.from_vscode').lazy_load()
        end,
      },
    },
    event = 'InsertEnter',
    keys = {
      { '<C-j>', function() require('luasnip').jump(1) end, mode = { 's', 'i' } },
      { '<C-k>', function() require('luasnip').jump(-1) end, mode = { 's', 'i' } },
    },
  },

  {
    'hrsh7th/nvim-cmp',
    event = 'InsertEnter',
    dependencies = {
      { 'hrsh7th/cmp-nvim-lsp' },
      { 'hrsh7th/cmp-nvim-lsp-signature-help' },
      { 'saadparwaiz1/cmp_luasnip' },
      { 'hrsh7th/cmp-calc' },
      { 'hrsh7th/cmp-buffer' },
      { 'hrsh7th/cmp-path' },
    },
    opts = function(_, opts)
      local cmp = require('cmp')

      opts.sources = cmp.config.sources({
        { name = 'nvim_lsp' },
        { name = 'nvim_lsp_signature_help' },
        { name = 'luasnip' },
        { name = 'calc' },
        { name = 'buffer' },
        { name = 'path' },
      })
      opts.mapping = cmp.mapping.preset.insert({
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<Tab>'] = cmp.mapping.select_next_item(),
        ['<S-Tab>'] = cmp.mapping.select_prev_item(),
        ['<CR>'] = cmp.mapping.confirm({ select = true }),
      })
      opts.window = {
        completion = cmp.config.window.bordered(),
      }

      local cmp_autopairs = require('nvim-autopairs.completion.cmp')
      cmp.event:on('confirm_done', cmp_autopairs.on_confirm_done())
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
  },
}
