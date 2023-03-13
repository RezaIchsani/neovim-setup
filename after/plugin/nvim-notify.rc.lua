local nvim_notify = require('notify')
nvim.notify.setup {
  --animation style
  stage = 'fade_in_slide_out',
  -- default timeout for notification
  timeout = 1500,
  background_color = '#2e3440',
}

vim.notify = nvim_notify
