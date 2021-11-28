require'qf_helper'.setup({
  prefer_loclist = true,       -- Used for QNext/QPrev (see Commands below)
  sort_lsp_diagnostics = true, -- Sort LSP diagnostic results
  quickfix = {
    autoclose = true,          -- Autoclose qf if it's the only open window
    default_bindings = true,   -- Set up recommended bindings in qf window
    default_options = true,    -- Set recommended buffer and window options
    max_height = 10,           -- Max qf height when using open() or toggle()
    min_height = 1,            -- Min qf height when using open() or toggle()
    track_location = 'cursor', -- Keep qf updated with your current location
                               -- Use `true` to update position as well
  },
  loclist = {                  -- The same options, but for the loclist
    autoclose = true,
    default_bindings = true,
    default_options = true,
    max_height = 10,
    min_height = 1,
    track_location = 'cursor',
  },
})
local leader_plug_qfHelper_n = {
  q = {
    name = "+qfHelper",
    a = {"<cmd>QNext<CR>"            , "QNext"           },
    A = {"<cmd>QNext!<CR>"           , "QNext!"          },
    s = {"<cmd>QPrev<CR>"          , "QPrev"         },
    S = {"<cmd>QPrev!<CR>"           , "QPrev!"          },
    d = {"<cmd>QFNext<CR>"         , "QFNext"        },
    D = {"<cmd>QFNext!<CR>"        , "QFNext!"         },
    f = {"<cmd>QFPrev<CR>"  , "QFPrev"  },
    F = {"<cmd>QFPrev!<CR>"       , "QFPrev!"      },
    g = {":LLNext "                 , "LLNext"         },
    G = {":LLNext! "                 , "LLNext!"         },
    q = {":LLPrev "                 , "LLPrev"         },
    Q = {":LLPrev! "                 , "LLPrev!"         },
    w = {":QFOpen "                 , "QFOpen"         },
    W = {":QFOpen! "                 , "QFOpen!"         },
    e = {":LLOpen "                 , "LLOpen"         },
    E = {":LLOpen! "                 , "LLOpen!"         },
    r = {":QFToggle "                 , "QFToggle"         },
    R = {":QFToggle! "                 , "QFToggle!"         },
    t = {":LLToggle "                 , "LLToggle"         },
    T = {":LLToggle! "                 , "LLToggle!"         },
  }
}
WK.register(leader_plug_qfHelper_n, {
  mode = "n",
  prefix = "  ",
})
