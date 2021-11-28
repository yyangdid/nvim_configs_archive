local cmd = vim.cmd

-- ---------------------------------------------------------------------------
-- 如果是第一次使用则执行安装 vim-plug，并自动开始安装未安装的插件
cmd([[
if empty(glob(stdpath('config') . '/autoload/plug.vim'))
  silent !curl -fLo $HOME/.config/nvim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
]])

-- ---------------------------------------------------------------------------
-- 使用 vim-plug 安装插件
cmd([[call plug#begin(stdpath('config') . '/plugins')]])
-- vim 中文文档
cmd([[Plug 'yianwillis/vimcdoc']])
-- oscyank
cmd([[Plug 'ojroques/vim-oscyank', {'as': 'oscyank'}]])
-- which-key
cmd([[Plug 'folke/which-key.nvim', {'as': 'whichkey'}]])
-- 主题配色
cmd([[Plug 'folke/tokyonight.nvim', {'as': 'tokyonight'}]])
--cmd([[Plug 'Mofiqul/dracula.nvim', {'as': 'draclua'}]])
-- 图标
cmd([[Plug 'kyazdani42/nvim-web-devicons', {'as': 'devicons'}]])
-- 代替默认的关闭 buffer
cmd([[Plug 'ojroques/nvim-bufdel', {'as': 'bufdel'}]])
-- 标签页栏
cmd([[Plug 'akinsho/bufferline.nvim', {'as': 'bufferline'}]])
-- treesitter
cmd([[Plug 'nvim-treesitter/nvim-treesitter', {'as': 'treesitter'}]])
-- 缩进线
cmd([[Plug 'lukas-reineke/indent-blankline.nvim', {'as': 'indentblankline'}]])
-- 色彩显示
cmd([[Plug 'norcalli/nvim-colorizer.lua', {'as': 'colorizer'}]])
---- 更好的 % 高亮和跳转，例如在 if else elseif 之间跳转
----（暂时发现和 vim-folterm 有冲突，会导致 nvim 崩溃、tmux 窗口关闭）
--cmd([[Plug 'andymass/vim-matchup', {'as': 'matchup'}]])
-- 文件树
cmd([[Plug 'kyazdani42/nvim-tree.lua', {'as': 'nvimtree'}]])
----cmd([[Plug 'luukvbaal/nnn.nvim', {'as': 'nnn'}]])
-- 状态栏
cmd([[Plug 'nvim-lualine/lualine.nvim', {'as': 'lualine'}]])
-- 码片段插件
cmd([[Plug 'L3MON4D3/LuaSnip', {'as': 'luasnip'}]])
-- --------------------------------------------------------
-- lsp 插件开始 -------------------------------------------
-- lspconfig
cmd([[Plug 'neovim/nvim-lspconfig', {'as': 'lspconfig'}]])
-- 自动补全
cmd([[Plug 'hrsh7th/nvim-cmp', {'as': 'cmp'}]])
-- 为 nvim-cmp 提供 LuaSnip 补全源
cmd([[Plug 'saadparwaiz1/cmp_luasnip', {'as': 'cmp_luasnip'}]])
-- 为 nvim-cmp 提供 LSP 补全源
cmd([[Plug 'hrsh7th/cmp-nvim-lsp', {'as': 'cmp_nvim_lsp'}]])
-- 为 nvim-cmp 提供 nvim 内置 lua API 补全源
cmd([[Plug 'hrsh7th/cmp-nvim-lua', {'as': 'cmp_nvim_lua'}]])
-- 为 nvim-cmp 提供 buffer 补全源
cmd([[Plug 'hrsh7th/cmp-buffer', {'as': 'cmp_buffer'}]])
-- 为 nvim-cmp 提供路径补全源
cmd([[Plug 'hrsh7th/cmp-path', {'as': 'cmp_path'}]])
-- 为 nvim-cmp 提供命令补全源
cmd([[Plug 'hrsh7th/cmp-cmdline', {'as': 'cmp_cmdline'}]])
-- 为 nvim-cmp 提供英语单词补全
cmd([[Plug 'octaltree/cmp-look', {'as': 'cmp_look'}]])
-- 为 nvim-cmp 提供基于 nvim 的拼写建议源
--cmd [[Plug 'f3fora/cmp-spell', {'as': 'cmp_spell'}]]
-- 为 nvim-cmp 提供 emoji 源
cmd([[Plug 'hrsh7th/cmp-emoji', {'as': 'cmp_emoji'}]])
-- 为 nvim-cmp 提供数学计算源
cmd([[Plug 'hrsh7th/cmp-calc', {'as': 'cmp_calc'}]])
-- 为暂时还没有适配 nvim 0.5 内置 lsp 配色的 lsp 诊断提供自动配色
cmd([[Plug 'folke/lsp-colors.nvim', {'as': 'lsp_colors'}]])
-- lsp 美化，提供了一些类似内置 lsp 的函数作为代替
--cmd [[Plug 'rinx/lspsaga.nvim', {'as': 'lspsaga'}]]
-- lsp 插件结束 -------------------------------------------
-- --------------------------------------------------------
-- 自动括号
cmd([[Plug 'windwp/nvim-autopairs', {'as': 'autopairs'}]])
-- 彩虹括号
cmd([[Plug 'p00f/nvim-ts-rainbow', {'as': 'rainbow'}]])
-- symbol 侧边栏
cmd([[Plug 'simrat39/symbols-outline.nvim', {'as': 'outline'}]])
-- 高亮光标下的单词
cmd([[Plug 'dominikduda/vim_current_word', {'as': 'currentWord'}]])
-- 高亮一下 yank 的区域
cmd([[Plug 'machakann/vim-highlightedyank', {'as': 'highlightedyank'}]])
-- 搜索完成后自动取消高亮
cmd([[Plug 'romainl/vim-cool', {'as': 'autoCloseSearchHighlight'}]])
-- 环绕字符编辑
cmd([[Plug 'tpope/vim-surround', {'as': 'surround'}]])
-- 扩张选择
cmd([[Plug 'terryma/vim-expand-region', {'as': 'expandRegion'}]])
-- 快速跳转到字符
cmd([[Plug 'easymotion/vim-easymotion', {'as': 'easymotion'}]])
-- 快速移动
cmd([[Plug 'unblevable/quick-scope', {'as': 'quickScope'}]])
-- 注释
cmd([[Plug 'preservim/nerdcommenter']])
-- 指定字符对齐
cmd([[Plug 'junegunn/vim-easy-align', {'as': 'easyAlign'}]])
-- 窗口选择
cmd([[Plug 't9md/vim-choosewin', {'as': 'choosewin'}]])
-- 翻译
cmd([[Plug 'voldikss/vim-translator', {'as': 'translator'}]])
-- 代码折叠
cmd([[Plug 'pseewald/vim-anyfold', {'as': 'anyfold'}]])
-- 类似 org-mode 的循环折叠，配合 vim-anyfold 使用
cmd([[Plug 'arecarn/vim-fold-cycle', {'as': 'foldCycle'}]])
-- 寄存器
cmd([[Plug 'tversteeg/registers.nvim', {'as': 'registers'}]])
-- 增强 quickfix
cmd([[Plug 'stevearc/qf_helper.nvim', {'as': 'qfHelper'}]])
-- 格式化
cmd([[Plug 'sbdchd/neoformat']])
--cmd([[Plug 'mhartington/formatter.nvim', {'as': 'formatter'}]])
-- --------------------------------------------------------
-- telescope 配置
cmd([[Plug 'nvim-lua/plenary.nvim', {'as': 'plenary'}]])
cmd([[Plug 'nvim-telescope/telescope.nvim', {'as': 'telescope'}]])
cmd(
  [[Plug 'nvim-telescope/telescope-symbols.nvim', {'as': 'telescope_symbols'}]]
)
cmd([[Plug 'benfowler/telescope-luasnip.nvim', {'as': 'telescope_luasnip'}]])
cmd([[Plug 'crispgm/telescope-heading.nvim', {'as': 'telescope_heading'}]])
-- telescope 配置结束
-- --------------------------------------------------------
-- git插件
cmd([[Plug 'tpope/vim-fugitive', {'as': 'fugitive'}]])
cmd([[Plug 'lewis6991/gitsigns.nvim', {'as': 'gitsigns'}]])
-- 内置终端管理
--cmd([[Plug 'akinsho/toggleterm.nvim', {'as': 'toggleterm'}]])
cmd([[Plug 'voldikss/vim-floaterm', {'as': 'floaterm'}]])
-- 窗口管理
cmd([[Plug 'yyangdid/vim-zoomwin', {'as': 'zoomwin'}]])
-- markdown 增强 (还需详细配置)
cmd([[Plug 'SidOfc/mkdx']])
--cmd([[Plug 'godlygeek/tabular']])
--cmd([[Plug 'plasticboy/vim-markdown', {'as': 'vim_markdown'}]])

-- 语法高亮
cmd([[Plug 'sheerun/vim-polyglot', {'as': 'polyglot'}]])
--格式化
cmd([[
" post install (yarn install | npm install) then load plugin only for editing supported files
Plug 'prettier/vim-prettier', {
  \ 'as': 'prettier',
  \ 'do': 'yarn install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'svelte', 'yaml', 'html'] }
]])

cmd([[call plug#end()]])

-- ---------------------------------------------------------------------------
-- 启动时 vim-plug 自动检查缺失的插件并进行安装（会延长启动时间）
cmd([[
autocmd VimEnter *
  \   if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|    PlugInstall --sync | q | source $MYVIMRC
  \|  endif
]])

local ok, err = pcall(require, "plugins.plugins_config")
if not ok then
  error("Error load plugins config" .. "\n\n" .. err)
end
