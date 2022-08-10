local dap = require("dap")

vim.fn.sign_define('DapBreakpoint', {text='🟥', texthl='', linehl='', numhl=''})
vim.fn.sign_define('DapBreakpointRejected', {text='🟦', texthl='', linehl='', numhl=''})

--dap.setup({
--	installation_path = vim.fn.stdpath("data") .. "/dapinstall/",
--})

require('dapui').setup()

require("zchakl.dap.python_dap")
require("zchakl.dap.lldb_dap")
require("zchakl.dap.dotnet_dap")
require("zchakl.dap.nodejs_dap")
require("zchakl.dap.nlua_dap")
