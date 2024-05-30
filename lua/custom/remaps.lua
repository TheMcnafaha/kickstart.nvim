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
vim.api.nvim_set_keymap("n", "<leader>rr", "<cmd>source ~/personal-projects/qwik-snippets.nvim/plugin/qsnippets.lua<CR>",
        { desc = "resource snippets" })

vim.api.nvim_set_keymap("n", "<leader>x", "<cmd>source %<CR>",
        { desc = "resource current file" })
-- my stuff
vim.keymap.set('n', '<leader>l', '<Cmd>Neotree toggle<CR>', { desc = 'toggle file tree' })

vim.keymap.set("n", "<leader>rt", "<Plug>PlenaryTestFile", { desc = "run test on file" })
vim.keymap.set("i", "<c-u>", require("luasnip.extras.select_choice"), { desc = "luansip ui" })
-- quick list
vim.keymap.set("n", "<A-j>", "<Cmd>cnext<CR>zz", { desc = "Foward quick list" })
vim.keymap.set("n", "<A-k>", "<Cmd>cprev<CR>zz", { desc = "Backward quick list" })

-- fugitive
vim.keymap.set("n", "<leader>G", "<Cmd>Git<CR>", { desc = "Open git TUI" })
-- flog v2
vim.keymap.set("n", "<leader>vb", " <c-w>v <c-w>l <Cmd> Flogsplit <CR> <c-w>j <c-w>c",
        { desc = "Open git branch graph in half vertical" })

vim.keymap.set("n", "<leader>fb", "<Cmd>Flog<CR>", { desc = "view git branch in full" })
