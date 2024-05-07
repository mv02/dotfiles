return {
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
      require('telescope').setup({
        defaults = {
          mappings = {
            i = {
              ['<esc>'] = require('telescope.actions').close,
            },
          },
        },
      })
    end,
  },
}
