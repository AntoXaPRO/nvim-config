require 'settings'
require 'manager'

-- Check packer magager.
local status_ok = pcall(require, 'packer')
if not status_ok then
  print('Reload Neovim and enter :PackerSync')
  return
end

require 'themes'
require 'plugins'

-- Completion.
require 'completion'

-- LSP.
require 'lsp'

-- COC.
-- require 'coc'
