-- flog v2
vim.keymap.set('n', '<leader>vb', ' <c-w>v <c-w>l <Cmd> Flogsplit <CR> <c-w>j <c-w>c', { desc = 'Open git branch graph in half vertical' })
vim.keymap.set('n', '<leader>fb', '<Cmd>Flog<CR>', { desc = 'view git branch in full' })

return {
  'rbong/vim-flog',
  lazy = true,
  cmd = { 'Flog', 'Flogsplit', 'Floggit' },
  dependencies = {
    'tpope/vim-fugitive',
  },
}
