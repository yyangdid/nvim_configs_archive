WK = require("which-key")

WK.setup({
  icons = {
    breadcrumb = "»", -- symbol used in the command line area that shows your active key combo
    separator = "➤", -- symbol used between a key and it's label
    group = "+", -- symbol prepended to a group
  },
  window = {
    border = "double", -- none, single, double, shadow
    position = "bottom", -- bottom, top
    -- margin = { 1, 0, 1, 0 }, -- extra window margin [top, right, bottom, left]
    -- padding = { 2, 2, 2, 2 }, -- extra window padding [top, right, bottom, left]
    margin = { 0, 0, 1, 0 }, -- extra window margin [top, right, bottom, left]
    padding = { 0, 0, 0, 0 }, -- extra window padding [top, right, bottom, left]
  },
  -- your configuration comes here
  -- or leave it empty to use the default settings
  -- refer to the configuration section below
  mode = "n", -- NORMAL mode
  -- prefix: use "<leader>f" for example for mapping everything related to finding files
  -- the prefix is prepended to every mapping part of `mappings`
  hidden = {
    "<silent>",
    "<cmd>",
    "<Cmd>",
    "<CR>",
    "call",
    "lua",
    "^:",
    "^ ",
    "require%('telescope.builtin'%)",
  },
  --prefix = " ",
  triggers = "auto",
  --triggers = {"<leader>"},
  buffer = nil, -- Global mappings. Specify a buffer number for buffer local mappings
  silent = true, -- use `silent` when creating keymaps
  noremap = true, -- use `noremap` when creating keymaps
  nowait = false, -- use `nowait` when creating keymaps
})
-- ---------------------------------------------------------------------------
local leader_plug_n = {
  name = "+plugins",
}
WK.register(leader_plug_n, {
  mode = "n",
  prefix = "  ",
})
local leader_plug_v = {
  name = "+plugins",
}
WK.register(leader_plug_v, {
  mode = "v",
  prefix = "  ",
})
-- ---------------------------------------------------------------------------
local leader_jump_n = {
  name = "+jump(easyAlign)",
}
WK.register(leader_jump_n, {
  mode = "n",
  prefix = " j",
})
local leader_jump_v = {
  name = "+jump(easyAlign)",
}
WK.register(leader_jump_v, {
  mode = "v",
  prefix = " j",
})
-- ---------------------------------------------------------------------------
-- file 相关操作
local leader_file_n = {
  name = "+file",
  b = { "<cmd>Telescope file_browser<cr>", "file_browser" },
  c = { "<cmd>Telescope find_files<cr>", "find_files" },
  f = { "<cmd>Telescope git_files<cr>", "git_files" },
  g = { "<cmd>Telescope grep_string<cr>", "grep_string" },
  l = { "<cmd>Telescope live_grep<cr>", "live_grep" },
  o = { "<cmd>Telescope oldfiles<cr>", "oldfiles" },
  s = { "<cmd>write<cr>", "save_file" },
  r = { "<cmd>e!<cr>", "reload_file" },
}
WK.register(leader_file_n, {
  mode = "n",
  prefix = " f",
})
-- ---------------------------------------------------------------------------
-- buffer 相关操作
local leader_buffer_n = {
  name = "+buffer",
  b = { "<cmd>Telescope buffers<cr>", "buffer_list" },
  --n = { "<cmd>bn<cr>", "next_buffer" },
  n = { "<cmd>BufferLineCycleNext<CR>", "next" },
  p = { "<cmd>BufferLineCyclePrev<CR>", "prev" },
  N = { "<cmd>BufferLineMoveNext<CR>", "moveToNext" },
  P = { "<cmd>BufferLineMovePrev<CR>", "moveToPrev" },
  --p = { "<cmd>bp<cr>", "prev_buffer" },
  s = { "<cmd>write<cr>", "save_buffer" },
  S = { "<cmd>wall<cr>", "save_all_buffer" },
  d = { "<cmd>BufDel<cr>", "delete_buffer" },
  ["<C-d>"] = { "<cmd>bufdo BufDel<cr>", "delete_all_buffers" },
  D = {
    "<cmd>bufdo BufDel<cr><cmd>e#<cr><cmd>bnext<cr><cmd>BufDel<cr>",
    "delett_save_other_buffers",
  },
}
WK.register(leader_buffer_n, {
  mode = "n",
  prefix = " b",
})
-- ---------------------------------------------------------------------------
-- window 相关操作
local leader_window_n = {
  name = "+window",
  ["|"] = { "<cmd>vsp<cr>", "vsplit" },
  ["\\"] = { "<cmd>sp<cr>", "split" },
  j = { "<cmd>wincmd j<cr>", "to_down" },
  k = { "<cmd>wincmd k<cr>", "to_up" },
  h = { "<cmd>wincmd h<cr>", "to_left" },
  l = { "<cmd>wincmd l<cr>", "to_right" },
  ["="] = { "<cmd>wincmd =<cr>", "田" },
  w = { "<Plug>(choosewin)", "choosewin" },
  m = { "<cmd>ZoomToggle<cr>", "max_toggle" },
  t = { "<cmd>tab sp<cr>", "break_out_into_new_tab" },
  d = { "<cmd>close<cr>", "close" },
}
WK.register(leader_window_n, {
  mode = "n",
  prefix = " w",
})
-- ---------------------------------------------------------------------------
-- code 相关操作
local leader_code_n = {
  name = "+code",
}
local leader_code_v = {
  name = "+code",
}
WK.register(leader_code_n, {
  mode = "n",
  prefix = " c",
})
WK.register(leader_code_v, {
  mode = "v",
  prefix = " c",
})
-- ---------------------------------------------------------------------------
-- insert 相关操作
local leader_insert_n = {
  name = "+insert",
  s = { "<cmd>Telescope luasnip<cr>", "snippet" },
}
WK.register(leader_insert_n, {
  mode = "n",
  prefix = " i",
})
-- ---------------------------------------------------------------------------
-- help 相关操作
local leader_help_n = {
  name = "+help",
  m = { "<cmd>Telescope man_pages<cr>", "man_pages" },
}
WK.register(leader_help_n, {
  mode = "n",
  prefix = " h",
})
