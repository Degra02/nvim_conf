
vim.g.rustaceanvim = {
  -- Plugin configuration
  tools = {
  },
  -- LSP configuration
  server = {
    on_attach = function(client, _bufnr)
      local navic = require("nvim-navic")
      navic.attach(client, bufnr)

      local keymap = vim.keymap

      keymap.set({ "n", "v" }, "<leader>la", "<cmd>RustLsp codeAction<cr>", { desc = "Code action" })
      keymap.set("n", "<leader>lle", "<cmd>RustLsp expandMacro<cr>", { desc = "Macro expand" })
      keymap.set("n", "<leader>lld", "<cmd>RustLsp externalDocs<cr>", { desc = "Open external documentation" })
      keymap.set("n", "<leader>llD", "<cmd>RustLsp debug<cr>", { desc = "Debug under cursor" })


    end,
    default_settings = {
      -- rust-analyzer language server configuration
      ['rust-analyzer'] = {

      },
    },
  },
  -- DAP configuration
  dap = {
  },
}
