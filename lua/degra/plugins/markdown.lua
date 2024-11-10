local color1_bg = "#37f499"
local color2_bg = "#a48cf2"
local color3_bg = "#04d1f9"
local color4_bg = "#f265b5"
local color5_bg = "#f1fc79"
local color6_bg = "#f7c67f"
local color_fg = "#323449"

return {
  'MeanderingProgrammer/markdown.nvim',
  main = "render-markdown",
  opts = {
    render_modes = {"n", "v", "i", "c"},
    heading = {
      width = 'block',
      -- vim.cmd(string.format([[highlight Headline1Bg guifg=%s guibg=%s]], color_fg, color1_bg)),
      -- vim.cmd(string.format([[highlight Headline2Bg guifg=%s guibg=%s]], color_fg, color2_bg)),
      -- vim.cmd(string.format([[highlight Headline3Bg guifg=%s guibg=%s]], color_fg, color3_bg)),
      -- vim.cmd(string.format([[highlight Headline4Bg guifg=%s guibg=%s]], color_fg, color4_bg)),
      -- vim.cmd(string.format([[highlight Headline5Bg guifg=%s guibg=%s]], color_fg, color5_bg)),
      -- vim.cmd(string.format([[highlight Headline6Bg guifg=%s guibg=%s]], color_fg, color6_bg)),

      backgrounds = {
        'Headline1Bg',
        'Headline2Bg',
        'Headline3Bg',
        'Headline4Bg',
        'Headline5Bg',
        'Headline6Bg',
      },
    },

    bullet = {
      enabled = true,
      icons = { '', '◆', '○', '◇' },
      left_pad = 0,
      right_pad = 1,
      highlight = 'RenderMarkdownBullet',
    },

    checkbox = {
      checked = {
        icon = "️✔️"
      },
      custom = {
        todo = { raw = '[-]', rendered = '󰥔 ', highlight = 'RenderMarkdownTodo' },
        span = { raw = '[~]', rendered = '〰️'},
        critical = { raw = '[!]', rendered = '⚠️', highlight = 'DiagnosticWarn' },
      },
    },
  },
  name = 'render-markdown',
  dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.nvim' }, -- if you use the mini.nvim suite
}
