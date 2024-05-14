return {
  "numToStr/Comment.nvim",
  event = { "BufReadPre", "BufNewFile" },
  config = function ()
    local comment = require("Comment")
    local keymap = vim.keymap

    keymap.set({"n", "v"}, "<leader>/", "<ESC><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR>", { desc = "Toggle comment" })


    comment.setup()
  end, -- runs require('Comment').setup()
}
