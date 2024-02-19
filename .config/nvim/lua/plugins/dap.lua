local dap = require('dap')

dap.adapters.cppdbg = {
  id = 'cppdbg',
  type = 'executable',
  command = vim.env.HOME .. '/apps/vscode-cpptools/extension/debugAdapters/bin/OpenDebugAD7',
}

dap.configurations.c = {
  {
    name = 'Launch file',
    type = 'cppdbg',
    request = 'launch',
    program = 'main',
    cwd = '${workspaceFolder}',
    stopAtEntry = true,
  },
}

dap.configurations.asm = dap.configurations.c

vim.fn.sign_define('DapBreakpoint', { text='', texthl='DiagnosticSignError' })
