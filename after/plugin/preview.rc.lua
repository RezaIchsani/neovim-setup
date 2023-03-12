local status, preview = pcall(require, 'markdown-preview.nvim')
if (not status) then return end

require('preview').setup {
  mkdp_auto_start = 0
}
