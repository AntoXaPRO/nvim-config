local status_ok, packer = pcall(require, 'packer')
if not status_ok then
  return
end

-- Init.
packer.use 'kyazdani42/nvim-tree.lua'

-- Check.
local is_tree, tree = pcall(require, 'nvim-tree')
if not is_tree then
  print('NvimTree not found')
  return
end

-- Hidden left markers folder.
vim.g.nvim_tree_indent_markers = 1

-- Icons folder.
vim.g.nvim_tree_icons = {
  default = '|',
  symlink = '>',
  folder = {
    default = '+',
    open = '-',
    empty = '+',
    empty_open = '-',
  }
}

-- Config.
tree.setup {
  view = {
    side = 'left'
  },
  actions = {
    open_file = {
      quit_on_open = 0
    }
  }
}

-- Mappings.
local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }
keymap('n', '<leader>e', ':NvimTreeToggle<CR>', opts)
