-- 设置代码折叠显示类型
vim.cmd[[
"function! NeatFoldText1()
"    let line = ' ' . substitute(getline(v:foldstart), '^\s*"\?\s*\|\s*"\?\s*{{' . '{\d*\s*', '', 'g') . ' '
"    let lines_count = v:foldend - v:foldstart + 1
"    let lines_count_text = '| ' . printf("%10s", lines_count . ' lines') . ' |'
"    let foldchar = matchstr(&fillchars, 'fold:\zs.')
"    let foldtextstart = strpart('+' . repeat(foldchar, v:foldlevel*2) . line, 0, (winwidth(0)*2)/3)
"    let foldtextend = lines_count_text . repeat(foldchar, 8)
"    let foldtextlength = strlen(substitute(foldtextstart . foldtextend, '.', 'x', 'g')) + &foldcolumn
"    return foldtextstart . repeat(foldchar, winwidth(0)-foldtextlength) . foldtextend
"endfunction
"function! YeatFoldText1() " {{{
"    let line = getline(v:foldstart)
"
"    let nucolwidth = &fdc + &number * &numberwidth
"    let windowwidth = winwidth(0) - nucolwidth - 3
"    let foldedlinecount = v:foldend - v:foldstart
"
"    " expand tabs into spaces
"    let onetab = strpart('          ', 0, &tabstop)
"    let line = substitute(line, '\t', onetab, 'g')
"
"    let line = strpart(line, 0, windowwidth - 2 -len(foldedlinecount))
"    let fillcharcount = windowwidth - len(line) - len(foldedlinecount)
"    return line . '…' . repeat(" ",fillcharcount) . foldedlinecount . '…' . ' '
"endfunction " }}}
function! MyFoldText1() " {{{
    let line = getline(v:foldstart)

    let nucolwidth = &fdc + &number * &numberwidth
    let windowwidth = winwidth(0) - nucolwidth - 5
    let foldedlinecount = v:foldend - v:foldstart

    " expand tabs into spaces
    let onetab = strpart('          ', 0, &tabstop)
    let line = substitute(line, '\t', onetab, 'g')

    let line = strpart(line, 0, windowwidth - 2 -len(foldedlinecount))
    let fillcharcount = windowwidth - len(line) - len(foldedlinecount)
    return line . ' ⋯' . repeat(" ",fillcharcount) . foldedlinecount . ' ⋯' . ' '
endfunction " }}}
set foldtext=MyFoldText1()
]]

-- 定义新命令
--vim.cmd [[cmap w!! w !sudo tee %]]
vim.cmd [[command! W :execute ':silent w !sudo tee % > /dev/null' | :edit!]]
vim.cmd [[cnoreabbrev w! W]]

-- ---------------------------------------------------------------------------
-- 映射按键示例
-- vim.api.nvim_set_keymap('i', '<A-Enter>', '<Esc>A', {noremap = true})
-- 选中时进行缩进，完成一次后自动选中，可以再次缩进
vim.api.nvim_set_keymap('v', '<', '<gv', {noremap = true})
vim.api.nvim_set_keymap('v', '>', '>gv', {noremap = true})

-- 映射 <S-CR> 为 <Esc>
vim.api.nvim_set_keymap('', '<F15>', '<Esc>', {noremap = true})
vim.api.nvim_set_keymap('n', '<F15>', '<Esc>', {noremap = true})
vim.api.nvim_set_keymap('v', '<F15>', '<Esc>', {noremap = true})
vim.api.nvim_set_keymap('s', '<F15>', '<Esc>', {noremap = true})
vim.api.nvim_set_keymap('x', '<F15>', '<Esc>', {noremap = true})
vim.api.nvim_set_keymap('o', '<F15>', '<Esc>', {noremap = true})
vim.api.nvim_set_keymap('!', '<F15>', '<Esc>', {noremap = true})
vim.api.nvim_set_keymap('i', '<F15>', '<Esc>', {noremap = true})
vim.api.nvim_set_keymap('l', '<F15>', '<Esc>', {noremap = true})
vim.api.nvim_set_keymap('c', '<F15>', '<Esc>', {noremap = true})
vim.api.nvim_set_keymap('t', '<F15>', '<Esc>', {noremap = true})
vim.api.nvim_set_keymap('', 'ண', '<F15>', {noremap = false})
vim.api.nvim_set_keymap('n', 'ண', '<F15>', {noremap = false})
vim.api.nvim_set_keymap('v', 'ண', '<F15>', {noremap = false})
vim.api.nvim_set_keymap('s', 'ண', '<F15>', {noremap = false})
vim.api.nvim_set_keymap('x', 'ண', '<F15>', {noremap = false})
vim.api.nvim_set_keymap('o', 'ண', '<F15>', {noremap = false})
vim.api.nvim_set_keymap('!', 'ண', '<F15>', {noremap = false})
vim.api.nvim_set_keymap('i', 'ண', '<F15>', {noremap = false})
vim.api.nvim_set_keymap('l', 'ண', '<F15>', {noremap = false})
vim.api.nvim_set_keymap('c', 'ண', '<F15>', {noremap = false})
vim.api.nvim_set_keymap('t', 'ண', '<F15>', {noremap = false})

vim.cmd [[let mapleader = " "]]
--vim.api.nvim_set_keymap('i', '<F16>', '<cmd>WhichKey<cr>', {noremap = true})
--vim.api.nvim_set_keymap('', 'ஹ', '<F16>', {noremap = false})
--vim.api.nvim_set_keymap('n', 'ஹ', '<F16>', {noremap = false})
--vim.api.nvim_set_keymap('v', 'ஹ', '<F16>', {noremap = false})
--vim.api.nvim_set_keymap('s', 'ஹ', '<F16>', {noremap = false})
--vim.api.nvim_set_keymap('x', 'ஹ', '<F16>', {noremap = false})
--vim.api.nvim_set_keymap('o', 'ஹ', '<F16>', {noremap = false})
--vim.api.nvim_set_keymap('!', 'ஹ', '<F16>', {noremap = false})
--vim.api.nvim_set_keymap('i', 'ஹ', '<F16>', {noremap = false})
--vim.api.nvim_set_keymap('l', 'ஹ', '<F16>', {noremap = false})
--vim.api.nvim_set_keymap('c', 'ஹ', '<F16>', {noremap = false})
--vim.api.nvim_set_keymap('t', 'ஹ', '<F16>', {noremap = false})
