local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

-- Download Packer.
if fn.empty(fn.glob(install_path)) > 0 then
  print('Download Packer')
  packer_bootstrap = fn.system({
    'git',
    'clone',
    '--depth',
    '1',
    'https://github.com/wbthomason/packer.nvim',
    install_path
  })
  print('Download completed, reload NeoVim')
  return
end

-- Packer instance.
local packer = require('packer')

-- Packer init.
packer.init({
  display = {
    open_fn = function()
      return require('packer.util').float({ border = 'single' })
    end
  }
})

-- Manager install.
packer.use 'wbthomason/packer.nvim'
