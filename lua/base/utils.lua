-- autocmd group 命令简单封装
function agcmd(cmdname, cmdxx)
  vim.cmd('augroup ' .. cmdname)
  vim.cmd('autocmd!')
  vim.cmd('autocmd ' .. cmdxx)
  vim.cmd('augroup END')
end
