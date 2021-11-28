vim.cmd [[
augroup currentWorldH
let g:vim_current_word#enabled = 1
hi CurrentWordTwins gui=underline,bold cterm=underline,bold
hi CurrentWord gui=underline cterm=underline
augroup END
]]
