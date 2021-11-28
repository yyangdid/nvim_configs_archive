vim.g.EasyMotion_do_mapping = 0
local leader_plug_easymotion_nv = {
  ['<C-e>'] = {
    name = "+easymotion",
  },
}

local leader_plug_easumotioncmd_nv = {
  a         = { "<Plug>(easymotion-f)"            , "后单字符" },
  b         = { "<Plug>(easymotion-F)"            , "前单字符" },
  c         = { "<Plug>(easymotion-w)"            , "后词首" },
  d         = { "<Plug>(easymotion-b)"            , "前词首" },
  e         = { "<Plug>(easymotion-bd-w)"         , "词首" },
  f         = { "<Plug>(easymotion-e)"            , "后词尾" },
  g         = { "<Plug>(easymotion-ge)"           , "前词尾" },
  h         = { "<Plug>(easymotion-bd-e)"         , "词尾" },
  i         = { "<Plug>(easymotion-j)"            , "后行首字符" },
  j         = { "<Plug>(easymotion-k)"            , "前行首字符" },
  k         = { "<Plug>(easymotion-s)"            , "单字符" },
  l         = { "<Plug>(easymotion-bd-jk)"        , "行首字符" },
  m         = { "<Plug>(easymotion-sol-j)"        , "后行首" },
  n         = { "<Plug>(easymotion-sol-k)"        , "前行首" },
  o         = { "<Plug>(easymotion-eol-j)"        , "后行尾" },
  p         = { "<Plug>(easymotion-eol-k)"        , "前行尾" },
  q         = { "<Plug>(easymotion-sl)"           , "行内单字符" },
  r         = { "<Plug>(easymotion-lineanywhere)" , "行内任意" },
  s         = { "<Plug>(easymotion-sn)"           , "多字符" },
  t         = { "<Plug>(easymotion-fn)"           , "后多字符" },
  u         = { "<Plug>(easymotion-Fn)"           , "前多字符" },
  v         = { "<Plug>(easymotion-sln)"          , "行内多字符" },
  w         = { "<Plug>(easymotion-fln)"          , "行内后多字符" },
  x         = { "<Plug>(easymotion-Fln)"          , "行内前多字符" },
  y         = { "<Plug>(easymotion-overwin-f)"    , "全单字符" },
  Y         = { "<Plug>(easymotion-overwin-f2)"   , "全双字符" },
  z         = { "<Plug>(easymotion-overwin-line)" , "全行首" },
  Z         = { "<Plug>(easymotion-overwin-w)"    , "全词首" },
  ['<C-m>'] = {
    name = "+more",
    a         = { "<Plug>(easymotion-t)"              , "后单字符前"       },
    b         = { "<Plug>(easymotion-T)"              , "前单字符后"       },
    c         = { "<Plug>(easymotion-W)"              , "后词首()"         },
    d         = { "<Plug>(easymotion-B)"              , "前词首()"         },
    e         = { "<Plug>(easymotion-E)"              , "后词尾()"         },
    f         = { "<Plug>(easymotion-gE)"             , "前词尾()"         },
    g         = { "<Plug>(easymotion-n)"              , "前lastSearch词首" },
    h         = { "<Plug>(easymotion-N)"              , "后lastSearch词首" },
    i         = { "<Plug>(easymotion-bd-f)"           , "单字符"           },
    j         = { "<Plug>(easymotion-bd-t)"           , "单字符后"         },
    k         = { "<Plug>(easymotion-bd-W)"           , "词首()"           },
    l         = { "<Plug>(easymotion-bd-E)"           , "词尾()"           },
    m         = { "<Plug>(easymotion-bd-n)"           , "lastSearch词首"   },
    n         = { "<Plug>(easymotion-jumptoanywhere)" , "任意跳转"         },
    o         = { "<Plug>(easymotion-repeat)"         , "重复上次"         },
    p         = { "<Plug>(easymotion-next)"           , "不知道"           },
    q         = { "<Plug>(easymotion-prev)"           , "不知道"           },
    r         = { "<Plug>(easymotion-iskeyword-w)"    , "后关键词首()"     },
    s         = { "<Plug>(easymotion-iskeyword-b)"    , "前关键词首()"     },
    t         = { "<Plug>(easymotion-iskeyword-bd-w)" , "关键词首()"       },
    u         = { "<Plug>(easymotion-iskeyword-e)"    , "后关键词尾()"     },
    v         = { "<Plug>(easymotion-iskeyword-ge)"   , "前关键词尾()"     },
    w         = { "<Plug>(easymotion-iskeyword-bd-e)" , "关键词尾()"       },
    x         = { "<Plug>(easymotion-vim-n)"          , "后vimLastSearch"  },
    y         = { "<Plug>(easymotion-vim-N)"          , "前vimLastSearch"  },
    z         = { "<Plug>(easymotion-fl)"             , "行内后单字符"     },
    A         = { "<Plug>(easymotion-Fl)"             , "行内前单字符"     },
    B         = { "<Plug>(easymotion-bd-fl)"          , "行内单字符"       },
    C         = { "<Plug>(easymotion-tl)"             , "行内后单字符前"   },
    D         = { "<Plug>(easymotion-Tl)"             , "行内前单字符后"   },
    E         = { "<Plug>(easymotion-bd-tl)"          , "行内前单后后单前" },
    F         = { "<Plug>(easymotion-wl)"             , "行内后词首()"     },
    G         = { "<Plug>(easymotion-bl)"             , "行内前词首()"     },
    H         = { "<Plug>(easymotion-bd-wl)"          , "行内词首()"       },
    I         = { "<Plug>(easymotion-el)"             , "行内后词尾()"     },
    J         = { "<Plug>(easymotion-gel)"            , "行内前词尾()"     },
    K         = { "<Plug>(easymotion-bd-el)"          , "行内词尾()"       },
    L         = { "<Plug>(easymotion-lineforward)"    , "行内后词首词尾"   },
    M         = { "<Plug>(easymotion-linebackward)"   , "行内前词首词尾"   },
    N         = { "<Plug>(easymotion-s2)"             , "双字符"           },
    O         = { "<Plug>(easymotion-f2)"             , "后双字符"         },
    P         = { "<Plug>(easymotion-F2)"             , "前双字符"         },
    Q         = { "<Plug>(easymotion-bd-f2)"          , "双字符"           },
    R         = { "<Plug>(easymotion-t2)"             , "后双字符前"       },
    S         = { "<Plug>(easymotion-T2)"             , "前双字符前"       },
    T         = { "<Plug>(easymotion-bd-t2)"          , "双字符前"         },
    U         = { "<Plug>(easymotion-sl2)"            , "行内双字符"       },
    V         = { "<Plug>(easymotion-fl2)"            , "行内后双字符"     },
    W         = { "<Plug>(easymotion-Fl2)"            , "行内前双字符"     },
    X         = { "<Plug>(easymotion-tl2)"            , "行内后双字符前"   },
    Y         = { "<Plug>(easymotion-Tl2)"            , "行内前双字符前"   },
    Z         = { "<Plug>(easymotion-bd-fn)"          , "多字符"           },
    ['<C-a>'] = { "<Plug>(easymotion-tn)"             , "后多字符前"       },
    ['<C-b>'] = { "<Plug>(easymotion-Tn)"             , "前多字符前"       },
    ['<C-c>'] = { "<Plug>(easymotion-bd-tn)"          , "多字符前"         },
    ['<C-d>'] = { "<Plug>(easymotion-bd-fln)"         , "行内多字符"       },
    ['<C-e>'] = { "<Plug>(easymotion-tln)"            , "行内后多字符前"   },
    ['<C-f>'] = { "<Plug>(easymotion-Tln)"            , "行内前多字符前"   },
    ['<C-h>'] = { "<Plug>(easymotion-bd-tln)"         , "多字符前"         },
  },
}
WK.register(leader_plug_easumotioncmd_nv, {
  mode = "n",
  prefix = "  <C-e>",
})
WK.register(leader_plug_easumotioncmd_nv, {
  mode = "v",
  prefix = "  <C-e>",
})
WK.register(leader_plug_easymotion_nv, {
  mode = "n",
  prefix = "  ",
})
WK.register(leader_plug_easymotion_nv, {
  mode = "v",
  prefix = "  ",
})

WK.register(leader_plug_easumotioncmd_nv, {
  mode = "n",
  prefix = " j",
})
WK.register(leader_plug_easumotioncmd_nv, {
  mode = "v",
  prefix = " j",
})
-- easymotion 内置命令列表
--       命令                        输入        含义
-- 默认 ==========================================================================
-- <Plug>(easymotion-f)                a   光标后面的 a 字符
-- <Plug>(easymotion-F)                a   光标前面的 a 字符
-- <Plug>(easymotion-t)                a   光标后面的 a 字符的前一个字符
-- <Plug>(easymotion-T)                a   光标前面的 a 字符的后一个字符
-- <Plug>(easymotion-w)                    光标后面的单词首字母
-- <Plug>(easymotion-W)                    光标后面的单词首字母（挨着空格的标点也作为一个单词）
-- <Plug>(easymotion-b)                    光标前面的单词首字母
-- <Plug>(easymotion-B)                    光标后面的单词首字母（挨着空格的标点也作为一个单词）
-- <Plug>(easymotion-e)                    光标后面的单词尾字母
-- <Plug>(easymotion-E)                    光标后面的单词尾字母（挨着空格的标点也作为一个单词）
-- <Plug>(easymotion-ge)                   光标前面的单词尾字母
-- <Plug>(easymotion-gE)                   光标前面的单词尾字母（挨着空格的标点也作为一个单词）
-- <Plug>(easymotion-j)                    光标后面的行首字符（包含空行）
-- <Plug>(easymotion-k)                    光标前面的行首字符（包含空行）
-- <Plug>(easymotion-n)                    光标前面包含最后一次使用 / 搜索的单词首字母
-- <Plug>(easymotion-N)                    光标后面包含最后一次使用 / 搜索的单词首字母
-- <Plug>(easymotion-s)                a   光标前后的 a 字符
--
-- 更多 ==========================================================================
-- <Plug>(easymotion-bd-f)                 同 <Plug>(easymotion-s)
-- <Plug>(easymotion-bd-t)             a   可视区域内 a 字符的后面一个字符
-- <Plug>(easymotion-bd-w)                 可视区域内的单词首字母
-- <Plug>(easymotion-bd-W)                 可视区域内的单词首字母（挨着空格的标点也作为一个单词）
-- <Plug>(easymotion-bd-e)                 可视区域内的单词尾字母
-- <Plug>(easymotion-bd-E)                 可视区域内的单词尾字母（挨着空格的标点也作为一个单词）
-- <Plug>(easymotion-bd-jk)                可视区域内的行首字符（包含空行）
-- <Plug>(easymotion-bd-n)                 可视区域内包含最后一次使用 / 搜索的单词首字母
-- <Plug>(easymotion-jumptoanywhere)       可视区域内任意跳转
-- <Plug>(easymotion-repeat)               重复上次操作
-- <Plug>(easymotion-next)                 不懂
-- <Plug>(easymotion-prev)                 不懂
-- <Plug>(easymotion-sol-j)                光标后面的行首
-- <Plug>(easymotion-sol-k)                光标前面的行首
-- <Plug>(easymotion-eol-j)                光标后面的行尾
-- <Plug>(easymotion-eol-k)                光标前面的行尾
-- <Plug>(easymotion-iskeyword-w)          光标后面关键词的词首（包括标点）
-- <Plug>(easymotion-iskeyword-b)          光标前面关键词的词首（包括标点）
-- <Plug>(easymotion-iskeyword-bd-w)       可视区域内关键词的词首（包括标点）
-- <Plug>(easymotion-iskeyword-e)          光标后面关键词的词尾（包括标点）
-- <Plug>(easymotion-iskeyword-ge)         光标前面关键词的词尾（包括标点）
-- <Plug>(easymotion-iskeyword-bd-e)       可视区域内关键词的词尾（包括标点）
-- <Plug>(easymotion-vim-n)                光标后面的 兼容 vim / 最后搜索
-- <Plug>(easymotion-vim-N)                光标前面的 兼容 vim / 最后搜索
--
-- 行内 ==========================================================================
-- <Plug>(easymotion-sl)               a   当前行搜索 a 字符
-- <Plug>(easymotion-fl)               a   当前行光标后 a 字符
-- <Plug>(easymotion-Fl)               a   当前行光标前 a 字符
-- <Plug>(easymotion-bd-fl)                同 <Plug>(easymotion-sl)
-- <Plug>(easymotion-tl)               a   当前行光标后面的 a 字符的前一个字符
-- <Plug>(easymotion-Tl)               a   当前行光标前面的 a 字符的后一个字符
-- <Plug>(easymotion-bd-tl)            a   当前行光标前 a 的后一个字符，光标后 a 的前一个字符
-- <Plug>(easymotion-wl)                   当前行光标后单词首字符（挨着空格的标点也作为一个单词）
-- <Plug>(easymotion-bl)                   当前行光标前单词首字符（挨着空格的标点也作为一个单词）
-- <Plug>(easymotion-bd-wl)                当前行单词首字符（挨着空格的标点也作为一个单词）
-- <Plug>(easymotion-el)                   当前行光标后单词尾字符（挨着空格的标点也作为一个单词）
-- <Plug>(easymotion-gel)                  当前行光标前单词尾字符（挨着空格的标点也作为一个单词）
-- <Plug>(easymotion-bd-el)                当前行单词尾字符（挨着空格的标点也作为一个单词）
-- <Plug>(easymotion-lineforward)          当前行光标后词首词字符尾字符
-- <Plug>(easymotion-linebackward)         当前行光标前词首词字符尾字符
-- <Plug>(easymotion-lineanywhere)         当前行词首字符词尾字符
--
-- find ==========================================================================
-- <Plug>(easymotion-s2)               ab  可视区域内 ab
-- <Plug>(easymotion-f2)               ab  光标后 ab
-- <Plug>(easymotion-F2)               ab  光标前 ab
-- <Plug>(easymotion-bd-f2)            ab  同 <Plug>(easymotion-s2)
-- <Plug>(easymotion-t2)               ab  光标后 ab 的前一个字符
-- <Plug>(easymotion-T2)               ab  光标前 ab 的前一个字符
-- <Plug>(easymotion-bd-t2)            ab  可视区域内 ab 的前一个字符
-- -------------------------------------------------------------------------------
-- <Plug>(easymotion-sl2)              ab  当前行 ab
-- <Plug>(easymotion-fl2)              ab  当前行光标后 ab
-- <Plug>(easymotion-Fl2)              ab  当前行光标前 ab
-- <Plug>(easymotion-tl2)              ab  当前行光标后 ab 的前一个字符
-- <Plug>(easymotion-Tl2)              ab  当前行光标前 ab 的前一个字符
-- -------------------------------------------------------------------------------
-- <Plug>(easymotion-sn)             abcd  可视区域内 abcd
-- <Plug>(easymotion-fn)             abcd  光标后 abcd
-- <Plug>(easymotion-Fn)             abcd  光标前 abcd
-- <Plug>(easymotion-bd-fn)          abcd  同 <Plug>(easymotion-sn)
-- <Plug>(easymotion-tn)             abcd  光标后 abcd 的前一个字符
-- <Plug>(easymotion-Tn)             abcd  光标前 abcd 的前一个字符
-- <Plug>(easymotion-bd-tn)          abcd  可视区域内 abcd 的前一个字符
-- -------------------------------------------------------------------------------
-- <Plug>(easymotion-sln)            abcd  当前行 abcd
-- <Plug>(easymotion-fln)            abcd  当前行光标后 abcd
-- <Plug>(easymotion-Fln)            abcd  当前行光标前 abcd
-- <Plug>(easymotion-bd-fln)         abcd  同 <Plug>(easymotion-sln)
-- <Plug>(easymotion-tln)            abcd  当前行光标后 abcd 的前一个字符
-- <Plug>(easymotion-Tln)            abcd  当前行光标签 abcd 的前一个字符
-- <Plug>(easymotion-bd-tln)         abcd  可视区域内 abcd 的前一个字符
--
-- 跨窗口 ========================================================================
-- <Plug>(easymotion-overwin-f)         a  可视区域内字符 a （跨窗口）
-- <Plug>(easymotion-overwin-f2)       ab  可视区域内 ab （跨窗口）
-- <Plug>(easymotion-overwin-line)         可视区域内行首（跨窗口）
-- <Plug>(easymotion-overwin-w)            可视区域内词首（跨窗口）
