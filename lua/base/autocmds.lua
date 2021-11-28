local ok, err = pcall(require, "base.utils")
if not ok then
  error("Error loading base.utils" .. "\n\n" .. err)
end

-- ---------------------------------------------------------------------------
-- nvim autocommad 配置表
local acmd_options = {
  -- 设置退出 vim 回到终端时的光标样式命令列表，查看 :h guicursor 帮助
  RestoreCursorShapeOnExit = 'VimLeave * set guicursor=a:ver20-blink300-blinkon300-blinkoff300',

  -- 保存文件时自动把 tab 转换为空格，makefile 除外
  autoReTab = 'BufWritePre * if &ft != \'make\' | silent :retab | endif',

  -- 保存文件时自动删除行尾空格，并且保持光标位置不变
  autoCleanTrail = 'BufWritePre * silent! \z
  if !&binary && &filetype!= \'diff\' \z
  | let savepst = winsaveview() \z
  | silent! keeppatterns %s/\\s\\+$//e \z
  | call winrestview(savepst) \z
  | endif',

  -- 保存文件时自动删除多余空行，并且保持光标位置不变(如果光标位于被删除的空
  -- 行中，保持光标功能失效)
  -- 'autocmd BufWritePre * silent :g/^$\\n^$/d \z
  -- | call setpos(\'.\', getpos("\'\'"))',
  autoCleanEmptyLine = 'BufWritePre * silent :g/^$\\n^$/d \z
  | call setpos(\'.\', getpos("\'\'"))',

  -- 打开文件后，光标自动定位到上次关闭时的位置
  -- 下面的配置来自官方文档，使用 :h last-position-jump 查看
  -- " autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
  autoRePosition = 'BufReadPost * \z
  if line("\'\\"") >= 1 && line("\'\\"") \z
  <= line("$") && &ft !~# \'commit\' \z
  | exe "normal! g`\\"" | endif',
}

-- 解析 acmd_options 表
for name, value in pairs(acmd_options) do
  agcmd(name, value)
end

-- 设置各种后缀名的文件为 markdown 类型
vim.cmd([[
augroup PrettierFileDetect
  autocmd BufNewFile,BufReadPost *.markdown,*.md,*.mdown,*.mkd,*.mkdn,*.mdx setfiletype markdown
augroup end
]])