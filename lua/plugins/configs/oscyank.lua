-- vim-oscyank 配置
vim.cmd [[
  autocmd TextYankPost * if v:event.operator is 'y' && v:event.regname is '' | execute 'OSCYankReg "' | endif
  autocmd TextYankPost * if v:event.operator is 'y' && v:event.regname is '+' | execute 'OSCYankReg +' | endif
  autocmd TextYankPost * if v:event.operator is 'd' && v:event.regname is '' | execute 'OSCYankReg "' | endif
  let g:oscyank_silent = v:true
  " 如果不知道命令类型，注释上面所有配置，使用下面一行配置可进行查看
  " 如：dd 命令会在底部缓冲区显示操作类型的信息
  " autocmd TextYankPost * echo v:event
]]
