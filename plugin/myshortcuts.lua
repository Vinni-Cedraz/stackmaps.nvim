-- the following command keymaps ":colorschemes codemonkey" to the
-- "mn" keys. 
vim.api.nvim_set_keymap('n', '<leader>mn', ':colorscheme codemonkey<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>au', ':colorscheme aurora<CR>', { noremap = true, silent = true })
-- the following command keymaps :UndotreeToggle to the "S-u" keys.
vim.api.nvim_set_keymap('n', '<leader>u', ':UndotreeToggle<CR>', { noremap = true, silent = true })

