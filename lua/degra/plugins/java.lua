return {
  'nvim-java/nvim-java',
  lazy = true,
  config = function()
    require('java').setup({
      notifications = {
        dap = false,
      }
    })
  end,
}
