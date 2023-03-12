local status, bufferline = pcall(require, 'bufferline')
if (not status) then return end

require('bufferline').setup ({
  options = {
    mode = 'tabs',
    separator_style = 'slant',
    always_show_bufferline = false,
    show_buffer_close_icons = true,
    show_close_icon = true,
    color_icons = true
  },
  highlights = {
    separator_selected = {
      fg = '#525252',
    },
    separator_visible = {
      fg = '#073642',
    },
    separator = {
      fg = '#525252',
    },
    background = {
      fg = '#657b83',
    },
    buffer_selected = {
      fg = '#fdf6e3',
      bold = true,
      underline = false,
    },
    fill = {
      bg = '#1d2d50',
      --bg = '#073643',
    },
  },
})

vim.keymap.set('n', '<Tab>', '<Cmd>BufferLineCycleNext<CR>', {})
vim.keymap.set('n', '<S-Tab>', '<Cmd>BufferLineCyclePrev<CR>', {})
