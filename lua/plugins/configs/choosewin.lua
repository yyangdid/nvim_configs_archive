-- 启用大字母
vim.g.choosewin_overlay_enable = 1
--| Key  | Action     | Description                   |
--| ---- | ---------- | ----------------------------- |
--| 0    | tab_first  | Select FIRST    tab           |
--| [    | tab_prev   | Select PREVIOUS tab           |
--| ]    | tab_next   | Select NEXT     tab           |
--| $    | tab_last   | Select LAST     tab           |
--| x    | tab_close  | Close current tab             |
--| ;    | win_land   | Navigate to current window    |
--| -    | previous   | Naviage to previous window    |
--| s    | swap       | Swap windows               #1 |
--| S    | swap_stay  | Swap windows but stay      #1 |
--| <CR> | win_land   | Navigate to current window    |
--|      | <NOP>      | Disable predefined keymap     |

local leader_plug_choosewin_n = {
  w = {
    name = "+choosewin",
    --['<Space>'] = { "<Plug>(choosewin)"     , "选择窗口" },
    w = { "<Plug>(choosewin)"     , "选择窗口" },
  },
}
WK.register(leader_plug_choosewin_n, {
  mode = "n",
  prefix = "  ",
})
