return {
  'echasnovski/mini.nvim',
  version = false,
  config = function()
    -- require('mini.animate').setup()
    -- require('mini.diff').setup()
    require('mini.trailspace').setup()
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
  end,
}
