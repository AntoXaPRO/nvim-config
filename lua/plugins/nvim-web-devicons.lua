local status_ok, packer = pcall(require, 'packer')
if not status_ok then
  return
end

-- Init.
packer.use 'kyazdani42/nvim-web-devicons'

-- Check.
local is_icons, icons = pcall(require, 'nvim-web-devicons')
if not is_icons then
  print('WebDevicons not found')
  return
end

-- Config.
icons.setup {}
