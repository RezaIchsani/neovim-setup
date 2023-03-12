local status, starter = pcall(require, 'mini.starter')
if (not status) then return end

 local starter = require('mini.starter')
  starter.setup({
    items = {
      starter.sections.telescope(),
    },
    content_hooks = {
      starter.gen_hook.adding_bullet(),
      starter.gen_hook.aligning('center', 'center'),
    },
  })
