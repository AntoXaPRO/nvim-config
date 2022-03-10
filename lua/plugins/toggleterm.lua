local status_ok, packer = pcall(require, 'packer')
if not status_ok then
  return
end

-- Init.
packer.use 'akinsho/toggleterm.nvim'

-- Check.
local is_toggleterm, toggleterm = pcall(require, 'toggleterm')
if not is_toggleterm then
  print('Toggleterm not found')
	return
end

-- Config.
toggleterm.setup {
  open_mapping = [[<C-\>]],
	direction = 'float'
}
