local lualine = require("lualine")

lualine.setup({
  options = {
    theme = 'tokyonight',
    --theme = 'dracula',
    icons_enabled = true,
    --component_separators = { left = '', right = ''},
    --component_separators = { left = '', right = ''},
    component_separators = { left = '', right = ''},
    --section_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {},
    always_divide_middle = true,
    condition = function()
      local fts = {'NvimTree'}
      for _,ft in pairs(fts) do
        if (vim.bo.filetype == ft) then return false end
      end
      return true
    end
  },
  extensions = {
    "nvim-tree",
  },
})
