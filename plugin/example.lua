-- the following lines of code prints Hello, World! 
-- everytime the Hello command is called in the Lunarvim
-- command line

local cmd = vim.cmd

cmd "command! Hello echo 'Hello, World!'"

-- Now the command Hello will be keymapped to the  - key on normal
-- mode
cmd "nnoremap <silent> - :Hello<CR>"

-- now the - keymapping will be automatically 
-- called when a lvim is started
vim.api.nvim_create_autocmd("BufReadPre", {
  callback = function()
    vim.cmd "Hello"
  end,
})
