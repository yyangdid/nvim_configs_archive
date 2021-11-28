-- 使用默认按键？0 {1}
vim.g.NERDCreateDefaultMappings = 0
-- 对可视块使用合适的注释方式？0 {1}
vim.g.NERDAllowAnyVisualDelims = 1
-- 忽略可视块里的空格？0 {1}
vim.g.NERDBlockComIgnoreEmpty = 0
-- 忽略空行注释？{0} 1
vim.g.NERDCommentEmptyLines = 0
-- 可视模式下使用哪种注释？{0} 准确注释，1 行注释，2 处理没有多行注释的文件类型
vim.g.NERDCommentWholeLinesInVMode = 1
-- 自定义注释符
--vim.g.NERDCustomDelimiters = {
--    \ 'ruby': { 'left': '#', 'leftAlt': 'FOO', 'rightAlt': 'BAR' },
--    \ 'grondle': { 'left': '{{', 'right': '}}' },
--    \ 'c': { 'left': '/**','right': '*/' }
--\ }
-- 取消注释时是否查找和移除可选的注释符？0 {1}
vim.g.NERDRemoveAltComs = 1
-- 取消注释时是否移除注释符周围的空格？0 {1}
vim.g.NERDRemoveExtraSpaces = 1
-- 注释符左后右前是否添加空格？{0} 1
vim.g.NERDSpaceDelims = 1
-- 左右注释模式中，在左后右前添加任意字符串？
--let NERDLPlace="FOO"
--let NERDRPlace="BAR"
--基于上面的设定, 对下面这行 c 代码:
--    /* int horse */
--我们用 ,cn 注释，它就会变成:
--    /*FOO int horse BAR*/
--当我们取消注释时它就会变成原来的样子。
-- 是否使用注释菜单栏？{3}
--      "0": 关闭菜单.
--      "1": '注释' 菜单没有快捷键.
--      "2": '注释 '菜单有 <alt>-c 快捷键.
--      "3": 使用 'Plugin -> 注释' 菜单并有 <alt>-c 快捷键.
--vim.g.NERDMenuMode = 0
-- 是否在嵌套注释时此使用 place-holder 的分隔符？0 {1}
--vim.g.NERDUsePlaceHolders = 1
-- 取消注释时，自动删除尾随空格（包括空行里的空格）？{0} 1
vim.g.NERDTrimTrailingWhitespace = 1
-- 插入注释时的默认对齐方式？{'none'}, 'left', 'start', 'both'
vim.g.NERDDefaultAlign = 'left'
-- Sexy 注释时左右注释符是否各占一行？{0} 1
vim.g.NERDCompactSexyComs = 1
-- 对已注释的行再次注释时是否再次添加注释？0 {1}
vim.g.NERDDefaultNesting = 1
-- 检查所选行，发现有未注释的行时，注释所有行？{0} 1
vim.g.NERDToggleCheckAllLines = 1
-- 不知道 {0} 1
--vim.g.NERDDisableTabsInBlockComm = 0
-- 设置语言默认使用哪种注释风格
--vim.g.NERDAltDelims_java = 1
vim.g.NERDAltDelims_c = 1

local leader_plug_nerdcommenter_nx = {
  c = {
    name = "+nerdcommenter",
    d = { "<Plug>NERDCommenterUncomment" , "取消注释" },
    g = { "<Plug>NERDCommenterAlignBoth" , "两端对齐注释" },
    f = { "<Plug>NERDCommenterAlignLeft" , "左对齐注释" },
    y = { "<Plug>NERDCommenterYank"      , "复制后注释" },
    s = { "<Plug>NERDCommenterSexy"      , "注释(性感风格)" },
    Q = { "<Plug>NERDCommenterInvert"    , "分别切换注释" },
    C = { "<Plug>NERDCommenterNested"    , "强制嵌套注释" },
    m = { "<Plug>NERDCommenterMinimal"   , "使用多行风格" },
    q = { "<Plug>NERDCommenterToggle"    , "切换注释" },
    c = { "<Plug>NERDCommenterComment"   , "注释" },
  },
}
local leader_plug_nerdcommenter_n = {
  c = {
    name = "+nerdcommenter",
    S = { "<Plug>NERDCommenterAltDelims" , "切换风格" },
    a = { "<Plug>NERDCommenterAppend"    , "行尾添加注释" },
    A = { "<Plug>NERDCommenterToEOL"     , "光标到行尾" },
  },
}
WK.register(leader_plug_nerdcommenter_nx, {
  mode = "n",
  prefix = "  ",
})
WK.register(leader_plug_nerdcommenter_nx, {
  mode = "n",
  prefix = " c",
})
WK.register(leader_plug_nerdcommenter_n, {
  mode = "n",
  prefix = "  ",
})
WK.register(leader_plug_nerdcommenter_n, {
  mode = "n",
  prefix = " c",
})
WK.register(leader_plug_nerdcommenter_nx, {
  mode = "x",
  prefix = "  ",
})
WK.register(leader_plug_nerdcommenter_nx, {
  mode = "x",
  prefix = " c",
})