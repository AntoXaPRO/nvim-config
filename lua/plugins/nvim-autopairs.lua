local status_ok, packer = pcall(require, 'packer')
if not status_ok then
  return
end

-- Init.
packer.use 'windwp/nvim-autopairs'

-- Check.
local is_autopairs, autopairs  = pcall(require, 'nvim-autopairs')
if not is_autopairs then
  print('NvimAutopairs not found')
  return
end

-- Config.
autopairs.setup {}
