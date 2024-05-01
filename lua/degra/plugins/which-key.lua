local wk = {
  "folke/which-key.nvim",
  event = "VeryLazy",
  init = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 300
  end,
  config = function()
    local wk = require("which-key")
    wk.setup()

    local mappings = {
      e = { "<cmd>NvimTreeToggle<cr>", "Toggle NvimTree" },
      w = { name = "session" },
    }

    local opts = {
      prefix = "<leader>",
    }

    wk.register(mappings, opts)

  end,
  opts = {
  }
}



return wk
