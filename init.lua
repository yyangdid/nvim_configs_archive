local all_modules = {
  "base",
  "plugins",
}

for _, module in ipairs(all_modules) do
  local ok, err = pcall(require, module)
  if not ok then
    error("Error loading " .. module ..  "\n\n" .. err)
  end
end
