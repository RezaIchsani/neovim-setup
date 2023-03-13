local status, nvim_notify = pcall(require, 'notify')
if (not status) then return end

nvim_notify.setup {
  --animation style
  stage = 'fade_in_slide_out',
  -- default timeout for notification
  timeout = 1500,
  background_color = '#2e3440',
}

vim.notify = nvim_notify
