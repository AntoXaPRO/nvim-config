local status_ok, packer = pcall(require, 'packer')
if not status_ok then
  return
end

-- Init.
packer.use 'Mofiqul/vscode.nvim'

-- Check.
local is_vscode, vscode = pcall(require, 'vscode')
if not is_vscode then
  print('Vscode not found')
  return
end

-- Config.
vscode.change_style('dark')

-- Set theme.
-- vim.cmd [[colorscheme vscode]]
