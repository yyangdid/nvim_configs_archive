local nnn = require("nnn")
nnn.setup({
  picker = {
    cmd = "nnn -Pp",
    style = { border = "single" },
    session = "local",
  },
  mappings = {
    { "<C-t>", nnn.open_in_tab }, -- open file(s) in tab
    { "<C-s>", nnn.open_in_split }, -- open file(s) in split
    { "<C-v>", nnn.open_in_vsplit }, -- open file(s) in vertical split
    { "<C-p>", nnn.open_in_preview }, -- open file in preview split keeping nnn focused
    { "<C-y>", nnn.copy_to_clipboard }, -- copy file(s) to clipboard
    { "<C-w>", nnn.cd_to_path }, -- cd to file directory
    { "<C-e>", nnn.populate_cmdline }, -- populate cmdline (:) with file(s)
  },
})
