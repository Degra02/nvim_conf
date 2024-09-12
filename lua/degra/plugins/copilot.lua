return {
  'zbirenbaum/copilot.lua',
  cmd = "Copilot",
  event = "InsertEnter",
  config = function()
    require("copilot").setup({
      suggestion = {
        -- enabled = false,
        auto_trigger = true,
        keymap = {
          accept = "<C-y>",
        },
      },
      panel = { enabled = false },
      filetypes = {
        rust = true,
        zig = true,
        c = true,
        cpp = true,
        tex = true,
        nix = true,
        go = true,
        lua = true,
        typescript = true,
        javascript = true,
        css = true,
        html = true,
        markdown = true,
        ["*"] = false,
      },
    })
  end,
}
