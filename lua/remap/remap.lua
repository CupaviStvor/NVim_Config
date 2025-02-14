--  NOTE: Quality of life keymaps (Vim reconfigured)

vim.keymap.set("n", "<C-q>", ":q<CR>", {noremap = true})
vim.keymap.set("n", "<C-w>", ":w<CR>", {noremap = true})
vim.keymap.set("n", "<C-x>", ":q!<CR>", {noremap = true})
vim.keymap.set("n", "<leader>pe", ":Ex<CR>", {noremap = true})

--  NOTE: Undotree and Nvim-tree keymaps

vim.keymap.set("n", "<leader>u", ":UndotreeToggle<CR>", {noremap = true})
vim.keymap.set("n", "<leader>n", ":NvimTreeToggle<CR>", {noremap = true})

--  NOTE: Screen switch keymaps

vim.api.nvim_set_keymap('n', '<C-h>', '<C-w>h', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-j>', '<C-w>j', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-k>', '<C-w>k', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>l', { noremap = true, silent = true })

--  NOTE: Split screen keymaps

--  NOTE: Markdown Preview keymaps

vim.keymap.set("n", "<leader>mp", ":MarkdownPreviewToggle<CR>")

--  NOTE: Iterate over the buffers

vim.keymap.set("n", "<leader>\\",":bn<CR>")
vim.keymap.set("n", "<leader>'",":bp<CR>")
vim.keymap.set("n", "<leader>;",":bd<CR>")

--  NOTE: Yank to clipboard

    
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])

--  NOTE: Note-taking keymaps
 
vim.keymap.set("n", "<leader>mn",":e ~/Documents/Notes/temp_notes/note_" .. os.date('%Y-%m-%d_%H-%M') .. ".md<CR>")
