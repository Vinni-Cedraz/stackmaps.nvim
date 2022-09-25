-- the following lines of code prints Hello, World!
-- everytime the Hello command is called in the Lunarvim
-- command line

local cmd = vim.cmd

cmd "command! Hello echo 'Hello, World!'"

-- THIS FILE WAS SAVED AUTOMAGICALLY
-- // oo-- Now the command Hello will be keymapped to the  - key on normal
-- mode
cmd "nnoremap <silent> - :Hello<CR>"

-- Hello called when a lvim is started
vim.api.nvim_create_autocmd("BufReadPre", {
  callback = function()
    vim.cmd "Hello"
  end,
})

-- this creates a Save command that saves a file with :w and echos "this file is saved":
vim.cmd "command! Save w | echo 'this file is saved'"

-- the next autocommand echos "don't forget to save this file" every 2 minutes:
local timer = vim.loop.new_timer()
vim.api.nvim_create_autocmd("BufEnter", {
  callback = function()
    timer:start(120000, 0, vim.schedule_wrap(function()
      vim.cmd "Save"
    end))
  end,
})
