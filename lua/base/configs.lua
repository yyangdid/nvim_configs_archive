-- ---------------------------------------------------------------------------
-- nvim let 配置表
local let_options = {
  ['g:is_nvim'] = "has('nvim')",
  ['$XDG_DATA_HOME'] = "stdpath('config') . '/DATA_HOME'",
}

-- 解析 let_options 表
for name, value in pairs(let_options) do
  vim.cmd('let ' .. name .. '=' .. value)
end

-- ---------------------------------------------------------------------------
-- nvim set 配置表
local all_opt_options = {
  guicursor = "n-v:blinkon300,\z
               i-ci-c:ver20-blinkwait300-blinkon300-blinkoff300,\z
               r:hor20-blinkwait300-blinkon300-blinkoff300",
  termguicolors = true,
  clipboard = vim.opt.clipboard + { "unnamedplus" },
  mouse = "a",
  updatecount = 100,  -- 每输入 100 个字符，nvim 自动更新 .swp 文件
  updatetime = 300,    -- 每空闲 300 毫秒，nvim 自动更新 .swp 文件
  showtabline = 2,
  -- 设置字典补全的字典位置
  -- dictionary = vim.opt.dictionary + { "/usr/share/dict/american" },
  expandtab = true,
  tabstop = 2,
  shiftwidth = 2,
  softtabstop = 2,
  smartindent = true,
  --foldmethod = 'indent', -- 在 treesitter 里进行设置
  foldlevel = 99,
  list = true,
  listchars = "extends:❯,precedes:❮,tab:  »,trail:¤",
  wrap = false,
  ignorecase = true,
  smartcase = true,
  pumheight = 15,
  scrolloff = 5,
  iskeyword = vim.opt.iskeyword + { "-" },
  splitbelow = true,
  splitright = true,
  autochdir = true,
  number = true,
  timeoutlen = 20,
  colorcolumn = "80",
  -- relativenumber = true,
  cursorline = true,
  hidden = true,
  signcolumn = "number",
  undofile = true,
  completeopt = 'menu,menuone,noinsert,noselect,preview',
  --completeopt = 'menuone,noselect',
  --spell = true,
  --spelllang = "en_us",
}

-- 解析 all_opt_options 表
for name, value in pairs(all_opt_options) do
  vim.opt[name] = value
end

-- ---------------------------------------------------------------------------
-- 不知为什么，下面两项配置放在 all_opt_options 会报错
vim.opt.shortmess:append("sI")     -- 隐藏 nvim 欢迎界面
-- vim.opt.whichwrap:append("<>[]hl")

-- 下面两项不知道怎么放到 all_opt_options
vim.cmd [[set directory=$XDG_DATA_HOME/nvim/swap]]
vim.cmd [[set undodir=$XDG_DATA_HOME/nvim/undo]]
