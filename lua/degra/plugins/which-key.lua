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
      { "<leader>w", group = "session" },
    }

    wk.add(mappings)

  end,
  opts = {
  }
}



return wk
