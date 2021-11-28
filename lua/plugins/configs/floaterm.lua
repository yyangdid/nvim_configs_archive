vim.g.floaterm_width = 0.8
vim.g.floaterm_height = 0.8
vim.cmd([[
nnoremap   <silent>   <F7>    :FloatermNew<CR>
tnoremap   <silent>   <C-[>    <C-\><C-n>:FloatermNew<CR>
"nnoremap   <silent>   <F8>    :FloatermPrev<CR>
tnoremap   <silent>   <F8>    <C-\><C-n>:FloatermPrev<CR>
"nnoremap   <silent>   <F9>    :FloatermNext<CR>
tnoremap   <silent>   <C-]>    <C-\><C-n>:FloatermNext<CR>
nnoremap   <silent>   <C-\>   :FloatermToggle<CR>
tnoremap   <silent>   <C-\>   <C-\><C-n>:FloatermToggle<CR>
]])
