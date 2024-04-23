-- Save last cursor postion in file
vim.api.nvim_create_autocmd({ 'BufWinEnter' }, {
  desc = 'return cursor to where it was last time closing the file',
  pattern = '*',
  command = 'silent! normal! g`"zv',
})

-- Clear last command in command line after timeout
vim.api.nvim_create_autocmd('CmdlineLeave', {
  callback = function()
    vim.fn.timer_start(2000, function()
      print ' '
    end)
  end,
})

-- Fix comment auto-indent for Python and YAML files
vim.api.nvim_create_autocmd({ 'VimEnter', 'WinEnter', 'BufWinEnter' }, {
  callback = function()
    vim.opt.indentkeys:remove '0#'
  end,
  pattern = '*',
})
