return {
  "goolord/alpha-nvim",
  event = "VimEnter",
  config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")

    -- set header

    dashboard.section.header.val = {
"  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ",
"  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ",
"  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ",
"  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ",
"  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ",
"  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ",
    }

    dashboard.section.buttons.val = {
      dashboard.button("n", "New File", "<cmd>ene<cr>"),
      dashboard.button("SPC ff", "Find File", "<cmd>Telescope find_files<cr>"),
      dashboard.button("SPC fg", "Grep String", "<cmd>Telescope live_grep<cr>"),
      dashboard.button("SPC wr", "Restore Session For Current Dir", "<cmd>SessionRestore<cr>"),
      dashboard.button("q", "Quit", "<cmd>qa<cr>"),
    }

    alpha.setup(dashboard.opts)
    vim.cmd([[autocmd FileType alpha setlocal nofoldenable]])

  end,

}

