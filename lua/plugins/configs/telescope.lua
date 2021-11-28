require('telescope').setup{
  defaults = {
    -- Default configuration for telescope goes here:
    -- config_key = value,
    mappings = {
      i = {
        -- map actions.which_key to <C-h> (default: <C-/>)
        -- actions.which_key shows the mappings for your picker,
        -- e.g. git_{create, delete, ...}_branch for the git_branches picker
        ["<C-h>"] = "which_key"
      }
    }
  },
  pickers = {
    -- Default configuration for builtin pickers goes here:
    -- picker_name = {
    --   picker_config_key = value,
    --   ...
    -- }
    --find_files = {
    --  theme = "dropdown",
    --},
    file_browser = {
      hidden = true,
    },
    -- Now the picker_config_key will be applied every time you call this
    -- builtin picker
  },
  extensions = {
    -- Your extension configuration goes here:
    -- extension_name = {
    --   extension_config_key = value,
    -- }
    -- please take a look at the readme of the extension you want to configure
  }
}
-- ---------------------------------------------------------------------------
-- 添加到which-key
local leader_plug_telescope_n = {
  f = {
    name = "+telescope",
    f = {
      name = "+file pickers",
      q = {"<cmd>Telescope find_files<cr>"   , "find_files"   },
      w = {"<cmd>Telescope git_files<cr>"    , "git_files"    },
      e = {"<cmd>Telescope grep_string<cr>"  , "grep_string"  },
      r = {"<cmd>Telescope live_grep<cr>"    , "live_grep"    },
      t = {"<cmd>Telescope file_browser<cr>" , "file_browser" },
    },
    v = {
      name = "+vim pickers",
      q = {"<cmd>Telescope buffers<cr>"                   , "buffers"                   },
      w = {"<cmd>Telescope oldfiles<cr>"                  , "oldfiles"                  },
      e = {"<cmd>Telescope commands<cr>"                  , "commands"                  },
      r = {"<cmd>Telescope tags<cr>"                      , "tags"                      },
      t = {"<cmd>Telescope command_history<cr>"           , "command_history"           },
      y = {"<cmd>Telescope search_history<cr>"            , "search_history"            },
      u = {"<cmd>Telescope help_tags<cr>"                 , "help_tags"                 },
      i = {"<cmd>Telescope man_pages<cr>"                 , "man_pages"                 },
      o = {"<cmd>Telescope marks<cr>"                     , "marks"                     },
      p = {"<cmd>Telescope colorscheme<cr>"               , "colorscheme"               },
      a = {"<cmd>Telescope quickfix<cr>"                  , "quickfix"                  },
      s = {"<cmd>Telescope loclist<cr>"                   , "loclist"                   },
      d = {"<cmd>Telescope jumplist<cr>"                  , "jumplist"                  },
      f = {"<cmd>Telescope vim_options<cr>"               , "vim_options"               },
      g = {"<cmd>Telescope registers<cr>"                 , "registers"                 },
      h = {"<cmd>Telescope autocommands<cr>"              , "autocommands"              },
      j = {"<cmd>Telescope spell_suggest<cr>"             , "spell_suggest"             },
      k = {"<cmd>Telescope keymaps<cr>"                   , "keymaps"                   },
      l = {"<cmd>Telescope filetypes<cr>"                 , "filetypes"                 },
      z = {"<cmd>Telescope highlights<cr>"                , "highlights"                },
      x = {"<cmd>Telescope current_buffer_fuzzy_find<cr>" , "current_buffer_fuzzy_find" },
      c = {"<cmd>Telescope current_buffer_tags<cr>"       , "current_buffer_tags"       },
      v = {"<cmd>Telescope resume<cr>"                    , "resume"                    },
      b = {"<cmd>Telescope pickers<cr>"                   , "pickers"                   },
    },
    s = {
      name = "+lsp pickers",
      q = {"<cmd>Telescope lsp_references<cr>"                , "lsp_references"},
      w = {"<cmd>Telescope lsp_document_symbols<cr>"          , "lsp_document_symbols"},
      e = {"<cmd>Telescope lsp_workspace_symbols<cr>"         , "lsp_workspace_symbols"},
      r = {"<cmd>Telescope lsp_dynamic_workspace_symbols<cr>" , "lsp_dynamic_workspace_symbols"},
      t = {"<cmd>Telescope lsp_code_actions<cr>"              , "lsp_code_actions"},
      y = {"<cmd>Telescope lsp_range_code_actions<cr>"        , "lsp_range_code_actions"},
      u = {"<cmd>Telescope lsp_document_diagnostics<cr>"      , "lsp_document_diagnostics"},
      i = {"<cmd>Telescope lsp_workspace_diagnostics<cr>"     , "lsp_workspace_diagnostics"},
      o = {"<cmd>Telescope lsp_implementations<cr>"           , "lsp_implementations"},
      p = {"<cmd>Telescope lsp_definitions<cr>"               , "lsp_definitions"},
      a = {"<cmd>Telescope lsp_type_definitions<cr>"          , "lsp_type_definitions"},
    },
    g = {
      name = "+git pickers",
      q = {"<cmd>Telescope git_commits<cr>"  , "git_commits"  },
      w = {"<cmd>Telescope git_bcommits<cr>" , "git_bcommits" },
      e = {"<cmd>Telescope git_branches<cr>" , "git_branches" },
      r = {"<cmd>Telescope git_status<cr>"   , "git_status"   },
      t = {"<cmd>Telescope git_stash<cr>"    , "git_stash"    },
    },
    t = {
      name = "+treesitter picker",
      q = {"<cmd>Telescope treesitter<cr>"  , "treesitter"  },
    },
    l = {
      name = "+lists pickers",
      q = {"<cmd>Telescope planets<cr>"   , "planets"   },
      w = {"<cmd>Telescope builtin<cr>"   , "builtin"   },
      e = {"<cmd>Telescope reloader<cr>"  , "reloader"  },
      r = {"<cmd>Telescope symbols<cr>"   , "symbols"   },
    },
    r = {
      name = "+previewers",
    },
    e = {
      name = "+sorters",
    },
    m = {
      name = "+themes",
      q = {"<cmd>Telescope find_files theme=dropdown<cr>"   , "find_files dropdown" },
      w = {"<cmd>Telescope find_files theme=cursor<cr>"     , "find_files cursor"   },
      e = {"<cmd>Telescope find_files theme=ivy<cr>"        , "find_files ivy"      },
    },
    i = {
      name = "+plugins_cmd",
    },
  }
}
WK.register(leader_plug_telescope_n, {
  mode = "n",
  prefix = "  ",
})
