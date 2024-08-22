return {
  'zbirenbaum/copilot.lua',
  cmd = "Copilot",
  event = "InsertEnter",
  config = function()
    require("copilot").setup({
      suggestion = {
        enabled = false,
        -- auto_trigger = true,
        debounce = 100,
        keymap = {
          accept = "<C-l>",
        },
      },
      panel = { enabled = false },
      filetypes = {
        rust = true,
        zig = true,
        c = true,
        cpp = true,
        tex = true,
        css = true,
        go = true,
        html = true,
        javascript = true,
        lua = true,
        typescript = true,
        ["*"] = false,
      },
      server_opts_overrides = {},
    })
  end,
}
