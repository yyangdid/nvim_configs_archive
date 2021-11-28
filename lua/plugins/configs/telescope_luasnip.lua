require("telescope").load_extension("luasnip")

local leader_plug_telescope_luasnip_n = {
  s = { "<cmd>Telescope luasnip<cr>", "luasnip" },
}
WK.register(leader_plug_telescope_luasnip_n, {
  mode = "n",
  prefix = "  fi",
})
