local dap = require("dap")

dap.adapters.node2 = {
  type = 'executable',
  command = 'node',
  args = {'/Documents and Settings/Zach Hakl/AppData/Local/nvim-data/mason/bin/node-debug2-adapter.cmd'},
}

dap.configurations.javascript = {
  {
    name = 'Launch',
    type = 'node2',
    request = 'launch',
    program = '${file}',
    cwd = vim.fn.getcwd(),
    sourceMaps = true,
    protocol = 'inspector',
    console = 'integratedTerminal',
  },
  {
    -- For this to work you need to make sure the node process is started with the `--inspect` flag.
    name = 'Attach to process',
    type = 'node2',
    request = 'attach',
    processId = require'dap.utils'.pick_process,
  },
}
