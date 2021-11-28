local bufferline = require("bufferline")

bufferline.setup {
  options = {
    numbers = "none",
    --indicator_icon = '',
    indicator_icon = '█',
    offsets = {
      { filetype = "NvimTree", text = "", padding = 0 },
      { filetype = "Outline", text = "", padding = 0 }
    },
    --buffer_close_icon = "",
    --modified_icon = "",
    --close_icon = "",
    show_close_icon = false,
    --left_trunc_marker = "",
    --right_trunc_marker = "",
    --max_name_length = 14,
    --max_prefix_length = 13,
    --tab_size = 20,
    --show_tab_indicators = true,
    --enforce_regular_tabs = false,
    --view = "multiwindow",
    show_buffer_close_icons = false,
    --separator_style = "thin",
    --always_show_bufferline = true,
    --diagnostics = false, -- "or nvim_lsp"
    --right_mouse_command = "buffer %d",
    right_mouse_command = "BufDel",
  }
}
-- ------------------------------------------------------
-- 添加到 which-key
local leader_plug_bufferline_n = {
  b = {
    name = "+bufferline",
    n = {"<cmd>BufferLineCycleNext<CR>", "next"},
    p = {"<cmd>BufferLineCyclePrev<CR>", "prev"},
    N = {"<cmd>BufferLineMoveNext<CR>" , "moveToNext"},
    P = {"<cmd>BufferLineMovePrev<CR>" , "moveToPrev"},
  }
}
WK.register(leader_plug_bufferline_n, {
  mode = "n",
  prefix = "  ",
})
