vim.g.surround_no_mappings=1
vim.g.surround_no_insert_mappings=1

local leader_plug_surround_n = {
  s = {
    name = "+surround",
    a         = { "<Plug>Ysurround"          , "ys添加"          },
    A         = { "<Plug>YSurround"          , "yS添加新行"      },
    ['<C-a>'] = { "<Plug>Yssurround"         , "yss添加整行"     },
    c         = { "<Plug>Csurround"          , "cs替换"          },
    C         = { "<Plug>CSurround"          , "cS替换新行"      },
    d         = { "<Plug>Dsurround"          , "ds删除"          },
    ['<C-s>'] = { "<Plug>YSsurround"         , "ySS添加整行新行" },
    -- l = { "<Plug>YSsurround" , "ySs" }, -- 同 ySS
  },
}
WK.register(leader_plug_surround_n, {
  mode = "n",
  prefix = "  ",
})
local leader_plug_surround_x = {
  s = {
    name = "+surround",
    a = { "<Plug>VSurround"  , "S添加"      },
    A = { "<Plug>VgSurround" , "gS添加新行" },
  },
}
WK.register(leader_plug_surround_x, {
  mode = "x",
  prefix = "  ",
})
