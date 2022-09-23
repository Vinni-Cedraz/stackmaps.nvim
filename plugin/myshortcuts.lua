--- keymaps aurora and codemonkey colorschemes
vim.api.nvim_set_keymap('n', '<leader>mn', ':colorscheme codemonkey<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>au', ':colorscheme aurora<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>99', ':colorscheme system76<CR>', { noremap = true, silent = true })
-- keymaps :UndotreeToggle
vim.api.nvim_set_keymap('n', '<leader>t', ':UndotreeToggle<CR>', { noremap = true, silent = true })
vim.keymap.set('n', "ay", require('osc52').copy_operator, {expr = true})
vim.keymap.set('n', "aay", '<leader>c_', {remap = true})
vim.keymap.set('x', "ay", require('osc52').copy_visual)

-- the following are easy keymappings for the the dap debugger:
vim.keymap.set('n', "<leader>d", "<cmd>lua require'dap'.toggle_breakpoint()<CR>")
vim.cmd [[autocmd BufEnter * silent! helptags ALL]]
-- the following line keymaps :help dap-configuration to leader -:
vim.keymap.set('n', "HC", "<cmd>help dap-configuration<CR>")
vim.keymap.set('n', "HA", "<cmd>help dap-adapter<CR>")
