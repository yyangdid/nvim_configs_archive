local ts_config = require("nvim-treesitter.configs")

ts_config.setup({
  ensure_installed = "maintained",
  --ensure_installed = {
  --  "lua",
  --  "python",
  --}
  highlight = {
    enable = true,
    use_languagetree = true,
    additional_vim_regex_highlight = true,
  },
  vim.cmd([[set foldmethod=expr]]),
  vim.cmd([[set foldexpr=nvim_treesitter#foldexpr()]]),
})
