vim.g.translator_target_lang = 'zh'
vim.g.translator_default_engines = {"bing", "haici", "youdao"}
local leader_plug_translator_n = {
  y = {
    name = "+translator",
    t = {"<Plug>Translate", "translate"},
    w = {"<Plug>TranslateW", "translateW"},
    r = {"<Plug>TranslateR", "translateR"},
    x = {"<Plug>TranslateX", "translateX"},
  }
}
local leader_plug_translator_v = {
  y = {
    name = "+translator",
    t = {"<Plug>TranslateV", "translate"},
    w = {"<Plug>TranslateWV", "translateW"},
    r = {"<Plug>TranslateRV", "translateR"},
    x = {"<Plug>TranslateX", "translateX"},
  }
}
WK.register(leader_plug_translator_n, {
  mode = "n",
  prefix = "  ",
})
WK.register(leader_plug_translator_v, {
  mode = "v",
  prefix = "  ",
})
-- 使用 <C-w>p 可以跳进和跳出翻译窗口
-- 滚动翻译窗口
vim.cmd [[
nnoremap <silent><expr> <M-f> translator#window#float#has_scroll() ?
                            \ translator#window#float#scroll(1) : "\<M-f>"
nnoremap <silent><expr> <M-b> translator#window#float#has_scroll() ?
                            \ translator#window#float#scroll(0) : "\<M-f>"
]]
