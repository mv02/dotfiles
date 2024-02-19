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
