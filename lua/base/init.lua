local base_modules = {
  "base.utils",
  "base.configs",
  "base.autocmds",
  "base.newMapAndCmd",
}

for _, module in ipairs(base_modules) do
  local ok, err = pcall(require, module)
  if not ok then
    error("Error loading " .. module .. "\n\n" .. err)
  end
end
