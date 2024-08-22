---@type MappingsTable
local M = {}

M.general = {
  n = {
    ["df"] = {
      function()
        vim.lsp.buf.definition()
      end,
      "go to definition",
      opts = { nowait = true },
    },
    ["<A-j>"] = { ":m .+1<CR>==", "move line down" },
    ["<A-k>"] = { ":m .-2<CR>==", "move line up" },
    ["<C-u>"] = { "<C-u>zz", "move half page up" },
    ["<C-d>"] = { "<C-d>zz", "move half page down" },
    ["<C-y>"] = { "ggyG", "copy all file content"},
  },
  v = {
    [">"] = { ">gv", "indent" },
  },
  i = {
    ["<C-o>"] = { "<ESC>o", "return to line above" },
    ["<C-O>"] = { "<ESC>O", "return to line below" },
  },
}

M.dap = {
  plugin = true,
  n = {
    ["<leader>db"] = {
      "<cmd> DapToggleBreakpoint <CR>",
      "Add breakpoint at line",
    },
    ["<leader>dus"] = {
      function()
        local widgets = require "dap.ui.widgets"
        local sidebar = widgets.sidebar(widgets.scopes)
        sidebar.open()
      end,
      "Open debugging sidebar",
    },
  },
}

M.dap_go = {
  plugin = true,
  n = {
    ["<leader>dbg"] = {
      function()
        require("dap-go").run()
      end,
      "Debug go program",
    },
    ["<leader>dgt"] = {
      function()
        require("dap-go").debug_test()
      end,
      "Debug go test",
    },
    ["<leader>dgl"] = {
      function()
        require("dap-go").debug_last()
      end,
      "Debug last go test",
    },
  },
}

-- more keybinds!

return M
