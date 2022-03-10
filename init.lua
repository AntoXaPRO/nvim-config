-- General settings.
require 'settings'

-- Packer manager.
require 'manager'

local is_packer = pcall(require, 'packer')
if not is_packer then
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
