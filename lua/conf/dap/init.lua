local dap = require('dap')
dap.adapters.cppdbg = {
  id = 'cppdbg',
  type = 'executable',
  command = '/home/rainboy/tmp/tmp2/extension/debugAdapters/bin/OpenDebugAD7',
}

dap.configurations.cpp = {
  {
    name = "Launch file",
    type = "cppdbg",
    request = "launch",
    program = function()
      return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
    end,
    cwd = '${workspaceFolder}',
    stopOnEntry = true,
    setupCommands = {
      {
        description = 'enable pretty printing',
        text = '-enable-pretty-printing',
        ignoreFailures = false
      },
    },
  },
}
vim.fn.sign_define('DapBreakpoint', {text='🛑', texthl='', linehl='', numhl=''})
dap.defaults.fallback.terminal_win_cmd = '30vsplit new' -- this will be overrided by dapui
