require('formatter').setup({
  filetype = {
     lua = {
      function()
        return {
          exe = "stylua",
          args = {
            "--indent-type ",
            "Spaces",
            "--column-width ",
            80,
            "--indent-width ",
            2
          },
          stdin = false,
        }
      end,
    },
  }
})

vim.api.nvim_exec([[
augroup FormatAutogroup
  autocmd!
  autocmd BufWritePost * FormatWrite
augroup END
]], true)
