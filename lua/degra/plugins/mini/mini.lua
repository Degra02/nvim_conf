return {
  'echasnovski/mini.nvim',
  version = false,
  config = function()
    require('mini.cursorword').setup()
    require('mini.trailspace').setup()
    -- require('mini.completion').setup()
    -- require('mini.animate').setup()
    -- require('mini.diff').setup()
    require('mini.indentscope').setup(
      {
        draw = {
          delay = 50,

          animation = require('mini.indentscope').gen_animation.quadratic({ easing = 'out', duration = 1000, unit = 'total' }),

          -- Symbol priority. Increase to display on top of more symbols.
          priority = 2,
        },

        -- Module mappings. Use `''` (empty string) to disable one.
        mappings = {
          -- Textobjects
          object_scope = 'ii',
          object_scope_with_border = 'ai',

          -- Motions (jump to respective border line; if not present - body line)
          goto_top = '[i',
          goto_bottom = ']i',
        },

        -- Options which control scope computation
        options = {
          -- Type of scope's border: which line(s) with smaller indent to
          -- categorize as border. Can be one of: 'both', 'top', 'bottom', 'none'.
          border = 'both',

          -- Whether to use cursor column when computing reference indent.
          -- Useful to see incremental scopes with horizontal cursor movements.
          indent_at_cursor = true,

          -- Whether to first check input line to be a border of adjacent scope.
          -- Use it if you want to place cursor on function header to get scope of
          -- its body.
          try_as_border = false,
        },

        -- Which character to use for drawing scope indicator
        symbol = '╎',
      }
    )
    require('mini.move').setup({
      -- Module mappings. Use `''` (empty string) to disable one.
      mappings = {
        -- Move visual selection in Visual mode. Defaults are Alt (Meta) + hjkl.
        left = '<C-h>',
        right = '<C-l>',
        down = '<C-j>',
        up = '<C-k>',
      },

      -- Options which control moving behavior
      options = {
        -- Automatically reindent selection during linewise vertical move
        reindent_linewise = true,
      },
    })
    require('mini.notify').setup({
      lsp_progress = {
        enable = false,
        duration_last = 700,
      },

      window = {
        winblend = 70,
      }
    })
  end,
}
