local ts_config = require("nvim-treesitter.configs")

ts_config.setup {
  matchup = {
    enable = true,         -- mandatory, false will disable the whole extension
  },
}