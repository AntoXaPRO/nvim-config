-- General settings.
require 'settings'
-- Packer manager.
require 'manager'

-- Check packer magager.
local packer = require('packer')
if not packer then
  print('Not Packer!!!')
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
