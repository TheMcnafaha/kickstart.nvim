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
-- jt stuff
vim.api.nvim_set_keymap("n", "<leader>rr", "<cmd>source ~/.config/nvim/lua/custom/ts-snippets.lua<CR>",
        { desc = "resource snippets" })

vim.api.nvim_set_keymap("n", "<leader>x", "<cmd>source %<CR>",
        { desc = "resource current file" })
-- my stuff
vim.keymap.set('n', '<leader>l', '<Cmd>Neotree toggle<CR>', { desc = 'toggle file tree' })

vim.keymap.set("n", "<leader>rt", "<Plug>PlenaryTestFile", { desc = "run test on file" })

--[[ E5113: Error while calling lua chunk: /home/dev/.config/nvim/init.lua:363: module 'telescope' not found:
        no field package.preload['telescope']
        no file './telescope.lua'
        no file '/build/nvim/parts/nvim/build/.deps/usr/share/luajit-2.1/telescope.lua'
        no file '/usr/local/share/lua/5.1/telescope.lua'
        no file '/usr/local/share/lua/5.1/telescope/init.lua'
        no file '/build/nvim/parts/nvim/build/.deps/usr/share/lua/5.1/telescope.lua'
        no file '/build/nvim/parts/nvim/build/.deps/usr/share/lua/5.1/telescope/init.lua'
        no file './telescope.so'
        no file '/usr/local/lib/lua/5.1/telescope.so'
        no file '/build/nvim/parts/nvim/build/.deps/usr/lib/lua/5.1/telescope.so'
        no file '/usr/local/lib/lua/5.1/loadall.so' ]]
