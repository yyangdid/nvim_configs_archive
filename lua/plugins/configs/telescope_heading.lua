require('telescope').load_extension('heading')

local leader_plug_telescope_heading_n = {
  h = { "<cmd>Telescope heading<cr>", "heading" },
}
--WK.register(leader_plug_telescope_heading_n, {
--  mode = "n",
--  prefix = "  fi",
--})

function telescope_heading_add_to_which_key()
--  local fileTy = vim.api.nvim_buf_get_option(0, "filetype")
--  if fileTy == 'markdown' then
    WK.register(leader_plug_telescope_heading_n, {
      mode = "n",
      prefix = "  fi",
    })
    WK.register(leader_plug_telescope_heading_n, {
      mode = "n",
      prefix = " i",
    })
--  end
end
vim.cmd('autocmd FileType markdown lua telescope_heading_add_to_which_key()')