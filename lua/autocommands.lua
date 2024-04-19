-- Clear last command in command line after timeout
vim.api.nvim_create_autocmd('CmdlineLeave', {
  callback = function()
    vim.fn.timer_start(2000, function()
      print ' '
    end)
  end,
})
