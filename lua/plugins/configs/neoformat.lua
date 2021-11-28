-- lua 格式化配置 ------------------------------------------------------------
-- 需要系统安装 stylua，最好使用 Koihik/LuaFormatter 只是需要自己编译
vim.cmd([[
let g:neoformat_lua_stylua = {
            \ 'exe': 'stylua',
            \ 'args': ['--indent-type Spaces', '--column-width 80', '--indent-width 2'],
            \ 'replace': 1,
            \ }
let g:neoformat_enabled_lua = ['stylua']
]])

-- 保存文件时自动格式化 ------------------------------------------------------
vim.cmd([[
augroup fmt
  autocmd!
  autocmd BufWritePre *.c,*.h,*.lua silent! undojoin | Neoformat
augroup END
]])
