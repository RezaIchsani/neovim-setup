local status, nvimtree = pcall(require, 'nvim-tree')
if (not status) then return end

require("nvim-tree").setup({
  view = {
    width = 25,
    side = 'left',
    float = {
      enable = false,
    },
  },
})
