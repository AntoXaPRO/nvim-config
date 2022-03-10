local status_ok, packer = pcall(require, 'packer')
if not status_ok then
  return
end

-- Init.
packer.use 'nvim-lualine/lualine.nvim'

-- Check.
local is_lualine, lualine = pcall(require, 'lualine')
if not is_lualine then
  print('Lualine not found')
  return
end

-- Config.
lualine.setup { opt = true }
