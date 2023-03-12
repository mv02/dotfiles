return {
  {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    event = { 'BufReadPost', 'BufNewFile' },
    opts = {
      highlight = {
        enable = true,
        disable = { 'latex' },
      },
      ensure_installed = {
        'bash',
        'c',
        'cpp',
        'diff',
        'fish',
        'gitcommit',
        'gitignore',
        'help',
        'html',
        'javascript',
        'json',
        'latex',
        'lua',
        'make',
        'markdown',
        'python',
        'sql',
        'svelte',
        'typescript',
      },
    },
    config = function (_, opts)
      require('nvim-treesitter.configs').setup(opts)
    end,
  },
}
