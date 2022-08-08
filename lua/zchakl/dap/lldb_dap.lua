local dap = require("dap")

dap.adapters.lldb = {
  type = 'executable',
  command = '/usr/bin/lldb-vscode',
  name = "lldb"
}

dap.adapters.codelldb = {
  type = 'server',
  port = "13000",
  executable = {
    command = '/usr/bin/codelldb',
    args = {"--port", "13000"},
  }
}

dap.configurations.cpp = {
  {
    name = "Launch File",
    type = "lldb",
    request = "launch",
    program = function()
      return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
    end,
    cwd = '${workspaceFolder}',
    stopOnEntry = false,
  },
}

-- If you want to use this for rust and c, add something like this:
dap.configurations.c = dap.configurations.cpp
dap.configurations.rust = dap.configurations.cpp

