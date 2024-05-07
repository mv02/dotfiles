return {
  {
    'folke/trouble.nvim',
    cmd = { 'TroubleToggle', 'Trouble' },
    keys = {
      { '<leader>xx', function() require('trouble').toggle('workspace_diagnostics') end },
      { '<leader>xq', function() require('trouble').toggle('quickfix') end },
      { '<leader>xl', function() require('trouble').toggle('loclist') end },
    },
    config = function()
      local trouble = require('trouble')

      trouble.setup({
        indent_lines = false,
        auto_close = true,
        auto_preview = false,
        use_diagnostic_signs = true,
      })

      vim.api.nvim_create_autocmd('QuickFixCmdPost', {
        callback = function()
          trouble.open('quickfix')
        end,
      })
    end,
  },
}
