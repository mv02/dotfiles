return {
  {
    'mfussenegger/nvim-dap',

    config = function()
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

    dependencies = { 'nvim-dap' },

    config = function()
      require('dapui').setup()
    end,

    keys = {
      { '<leader>dd', function() require('dapui').toggle() end },
    },
  },
}
