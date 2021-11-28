vim.cmd([[
let g:mkdx#settings     = { 'highlight': { 'enable': 1 },
                        "\ 'enter': { 'shift': 1 },
                        "\ 'links': { 'external': { 'enable': 1 } },
                        "\ 'toc': { 'text': 'Table of Contents', 'update_on_write': 1 },
                        \ 'map': { 'enable': 0 },
                        \ 'fold': { 'enable': 1 } }
let g:polyglot_disabled = ['markdown'] " for vim-polyglot users, it loads Plasticboy's markdown
                                       " plugin which unfortunately interferes with mkdx list indentation.
]])

-- 开启 nvim 自带的 markdown 折叠，会覆盖掉本插件的折叠功能
--vim.g.markdown_folding = 1
vim.cmd([[let g:markdown_fenced_languages = ['c', 'sh', 'shell'] ]])

local leader_plug_mkdx_n = {
  m = {
    name = "+mkdx",
    ["'"] = { "<Plug>(mkdx-toggle-quote-n)", "toggle_quote" },
  },
}

WK.register(leader_plug_mkdx_n, {
  mode = "n",
  prefix = "  ",
})
