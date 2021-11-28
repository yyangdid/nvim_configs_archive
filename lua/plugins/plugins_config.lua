local load_config = function(name)
  local cnf, ok, err
  cnf = "plugins.configs." .. name
  ok, err = pcall(require, cnf)
  if not ok then
    error("Error config whith " .. name .. "\n\n" .. err)
    return false
  end
end

local config_list = {
  "oscyank",
  "whichkey",
  "tokyonight",
  --"dracula",
  "devicons",
  "bufdel",
  "bufferline",
  "treesitter",
  "indentblankline",
  "colorizer",
  --"matchup",
  "nvimtree",
  --"nnn",
  "lualine",
  "luasnip",
  "lsp",
  "autopairs",
  "rainbow",
  "outline",
  "currentWord",
  "highlightedyank",
  "autoCloseSearchHighlight",
  "surround",
  "expandRegion",
  "easymotion",
  "quickScope",
  "nerdcommenter",
  "easyAlign",
  "choosewin",
  "translator",
  "anyfold",
  "foldCycle",
  "registers",
  "qfHelper",
  "neoformat",
  --"formatter",
  "telescope",
  "telescope_luasnip",
  "telescope_heading",
  "fugitive",
  "gitsigns",
  --"toggleterm",
  "floaterm",
  "mkdx",
  --"vim_markdown",
  "prettier",
}

for _, name in ipairs(config_list) do
  load_config(name)
end
