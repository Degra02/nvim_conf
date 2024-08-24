return {
    "NStefan002/screenkey.nvim",
    lazy = false,
    version = "*", -- or branch = "dev", to use the latest commit
    config = function()
      require("screenkey").setup({
        win_opts = {
            row = vim.o.lines - vim.o.cmdheight - 1,
            col = vim.o.columns - 1,
            relative = "editor",
            anchor = "SE",
            width = 20,
            height = 1,
            border = "single",
            title = "",
            title_pos = "center",
            style = "minimal",
            focusable = false,
            noautocmd = true,
        },
      })
    end,
}
