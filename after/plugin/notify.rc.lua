local status, notify = pcall(require, 'nvim-notify')
if (not status) then return end

require('notify').setup({
  background_colour = 'Normal',
})
