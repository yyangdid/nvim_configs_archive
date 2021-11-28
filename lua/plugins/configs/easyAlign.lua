-- 很多高级玩法，详见：https://github.com/junegunn/vim-easy-align/blob/master/EXAMPLES.md
local leader_plug_easyAlign_n = {
  e = {
    name = "+easyAlign",
    e = { "<Plug>(EasyAlign)"     , "对齐" },
  },
}
local leader_plug_easyAlign_x = {
  e = {
    name = "+easyAlign",
    e = { "<Plug>(EasyAlign)"     , "对齐" },
  },
}
WK.register(leader_plug_easyAlign_n, {
  mode = "n",
  prefix = "  ",
})
WK.register(leader_plug_easyAlign_x, {
  mode = "x",
  prefix = "  ",
})
