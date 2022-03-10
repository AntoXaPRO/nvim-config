local is_packer, packer = pcall(require, 'packer')
if not is_packer then
  return
end

-- Init.
packer.use {
  'nvim-telescope/telescope.nvim',
  requires = { {'nvim-lua/plenary.nvim'} }
}

-- Check.
local is_telescope, telescope = pcall(require, 'telescope')
if not is_telescope then
  print('Telescope not found')
  return
end

-- Config.
telescope.setup {
  defaults = {
    file_ignore_patterns = { '.git', 'node_modules', 'dist', 'static' }
  }
}

-- Mappings.
local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }
keymap('n', '<leader>t', '<CMD>Telescope find_files<CR>', opts)
