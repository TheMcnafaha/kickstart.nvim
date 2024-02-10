-- p stuff
vim.api.nvim_set_keymap('v', 'J', ":m '>+1<CR>gv=gv", { desc = "Shift selected area upwards" })
vim.api.nvim_set_keymap('v', 'K', ":m '>-2<CR>gv=gv", { desc = "Shift selected area downwards" })
vim.api.nvim_set_keymap('x', '<leader>p', '\"_dP',
	{ noremap = true, desc = 'delete and paste text without overwriting copied text' })
vim.api.nvim_set_keymap('n', '<leader>d', '\"_d', { desc = 'delete text without overwriting copied text' })
vim.api.nvim_set_keymap('n', '<C-d>', '<C-d>zz', { noremap = true, desc = "center screen on down half page" })
vim.api.nvim_set_keymap('n', '<C-u>', '<C-u>zz', { noremap = true, desc = "center screen on up half page" })
vim.api.nvim_set_keymap('n', 'n', 'nzzzv', { desc = "go foward a  search while keeping cursor centered" })
vim.api.nvim_set_keymap('n', 'N', 'Nzzzv', { desc = "go bakwards a  search while keeping cursor centered" })
-- not remap
vim.opt.scrolloff = 15
vim.wo.relativenumber = true
-- my stuff
vim.keymap.set('n', '<leader>l', '<Cmd>Neotree toggle<CR>', { desc = 'toggle file tree' })
