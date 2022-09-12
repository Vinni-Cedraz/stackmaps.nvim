--- keymaps aurora and codemonkey colorschemes
vim.api.nvim_set_keymap('n', '<leader>mn', ':colorscheme codemonkey<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>au', ':colorscheme aurora<CR>', { noremap = true, silent = true })
-- keymaps :UndotreeToggle
vim.api.nvim_set_keymap('n', '<leader>t', ':UndotreeToggle<CR>', { noremap = true, silent = true })
