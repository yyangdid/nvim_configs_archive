local nvimtree = require("nvim-tree")

vim.g.nvim_tree_add_trailing = 1
vim.g.nvim_tree_refresh_wait = 500
vim.g.nvim_tree_root_folder_modifier = table.concat { ":t:gs?$?/..", string.rep(" ", 1000), "?:gs?^??" }
nvimtree.setup {
  auto_close = true,
  --open_on_setup = true,
  gnore_ft_on_setup = { "dashboard" },
  --update_cwd = true,
  hijack_cursor = false,
  update_focused_file = {
    enable = true,
    update_cwd = false,
    ignore_list = {}
  },
  view = {
    width = 40,
  },
}

-- -------------------------------------------------------------------------
-- 进入和离开 NvimTree 窗口时自动切换光标
require("nvim-tree.view").View.winopts.cursorline = true

_G.nvimTreeEnter = function()
  vim.cmd "highlight! Cursor blend=100"
  vim.opt.guicursor = { "n:Cursor/lCursor", "v-c-sm:block", "i-ci-ve:ver25", "r-cr-o:hor2" }
end

_G.nvimTreeLeave = function()
  vim.cmd "highlight! Cursor blend=NONE"
  vim.opt.guicursor = { "n-v-c-sm:block", "i-ci-ve:ver25", "r-cr-o:hor20" }
end

vim.cmd [[autocmd WinEnter,BufWinEnter NvimTree lua nvimTreeEnter()]]
vim.cmd [[autocmd BufLeave,WinClosed, NvimTree lua nvimTreeLeave()]]

-- ------------------------------------------------------
-- 添加到 which-key
local leader_plug_nvimTree_n = {
  t = {
    name = "+nvimTree",
    o = {"<cmd>NvimTreeOpen<CR>"            , "open"           },
    c = {"<cmd>NvimTreeClose<CR>"           , "close"          },
    t = {"<cmd>NvimTreeToggle<CR>"          , "toggle"         },
    f = {"<cmd>NvimTreeFocus<CR>"           , "focus"          },
    r = {"<cmd>NvimTreeRefresh<CR>"         , "refresh"        },
    s = {"<cmd>NvimTreeFindFile<CR>"        , "search"         },
    S = {"<cmd>NvimTreeFindFileToggle<CR>"  , "search toggle"  },
    p = {"<cmd>NvimTreeClipboard<CR>"       , "clipboard"      },
    R = {":NvimTreeResize "                 , "resize"         },
  }
}
WK.register(leader_plug_nvimTree_n, {
  mode = "n",
  prefix = "  ",
})
