local leader_plug_expand_region_nv = {
  E = {
    name = "+expand-region",
    ['+'] = { "<Plug>(expand_region_expand)" , "expand" },
    ['-'] = { "<Plug>(expand_region_shrink)" , "shrink" },
  },
}
WK.register(leader_plug_expand_region_nv, {
  mode = "n",
  prefix = "  ",
})
WK.register(leader_plug_expand_region_nv, {
  mode = "v",
  prefix = "  ",
})
