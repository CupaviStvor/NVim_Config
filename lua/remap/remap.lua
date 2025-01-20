
--  NOTE: Quality of life keymaps (Vim reconfigured)

vim.keymap.set("n", "<C-q>", ":q<CR>", {noremap = true})
vim.keymap.set("n", "<C-w>", ":w<CR>", {noremap = true})
vim.keymap.set("n", "<C-x>", ":q!<CR>", {noremap = true})
vim.keymap.set("n", "<leader>pe", ":Ex<CR>", {noremap = true})

--  NOTE: Undotree keymaps

vim.keymap.set("n", "<leader>u", ":UndotreeToggle<CR>", {noremap = true})

--  NOTE: Screen switch keymaps

vim.api.nvim_set_keymap('n', '<C-h>', '<C-w>h', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-j>', '<C-w>j', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-k>', '<C-w>k', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>l', { noremap = true, silent = true })

