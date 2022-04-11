require 'themes.nightfox'
require 'themes.vscode'

-- Set colorscheme.
local is_ok = pcall(require, 'nightfox')
if is_ok then
  vim.cmd [[colorscheme terafox]]
end
