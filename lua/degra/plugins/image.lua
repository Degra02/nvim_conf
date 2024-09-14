return {
  {
    'vhyrro/luarocks.nvim',
    priority = 1001,
    opts = {
      rocks = { 'magick' }
    }
  },
  {
    '3rd/image.nvim',
    opts = {
      backend = 'kitty'
    }
  }
}
