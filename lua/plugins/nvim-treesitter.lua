local is_packer, packer = pcall(require, 'packer')
if not is_packer then
  return
end

-- Init.
packer.use 'nvim-treesitter/nvim-treesitter'

-- Check.
local is_treesitter, treesitter = pcall(require, 'nvim-treesitter.configs')
if not is_treesitter then
  print('Treesitter not found')
  return
end

-- Config.
treesitter.setup {
  ensure_installed = {
    'lua',
    'vim',
    'bash',
    'typescript',
    'javascript',
    'html',
    'json',
    'css',
    'scss',
    'pug',
    'vue',
    'python',
    'regex',
    'markdown'
  },
  autopairs = {
    enable = true,
  },
  indent = { enable = true },
  highlight = {
    enable = true
  },
  context_commentstring = {
    enable = true,
    enable_autocmd = false,
  }
}
