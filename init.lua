-- General settings.
require 'settings'
-- Packer manager.
require 'manager'

-- Check packer magager.
local status_ok = pcall(require, 'packer')
if not status_ok then
  print('Not Packer...')
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
