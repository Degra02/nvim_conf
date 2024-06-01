return {
  "folke/noice.nvim",
  event = "VeryLazy",
  dependencies = {
    "MunifTanjim/nui.nvim",
  },
  opts = {
    lsp = {
      -- override markdown rendering so that **cmp** and other plugins use **Treesitter**
      override = {
        ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
        ["vim.lsp.util.stylize_markdown"] = true,
        ["cmp.entry.get_documentation"] = true,
      },
    },
    -- you can enable a preset for easier configuration
    presets = {
      bottom_search = true, -- use a classic bottom cmdline for search
      command_palette = false, -- position the cmdline and popupmenu together
      long_message_to_split = true, -- long messages will be sent to a split
      inc_rename = true, -- enables an input dialog for inc-rename.nvim
      lsp_doc_border = false, -- add a border to hover docs and signature help
    },
    views = {
      -- Clean cmdline_popup + palette
      cmdline_popup = {
        position = {
          row = "100%",
          col = "50%",
        },
        border = {
          style = "shadow",
        },
        size = {
          width = "auto",
          height = "auto",
        },
        win_options = {
          winhighlight = { NormalFloat = "NormalFloat", FloatBorder = "FloatBorder" },
        },
      },
      cmdline_popupmenu = {
        relative = "editor",
        position = {
          row = "90%",
          col = "50%",
        },
        size = {
          width = "auto",
          height = "auto",
        },
        border = {
          style = "none",
          padding = { 0, 3 },
        },
        win_options = {
          winhighlight = { NormalFloat = "NormalFloat", FloatBorder = "NoiceCmdlinePopupBorder" },
        },
      },
      popup = {
        border = {
          style = "single",
        },
      },
    },
  },
}
