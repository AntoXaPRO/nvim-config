local is_ok, packer = pcall(require, 'packer')
if not is_ok then
  return
end

-- Init.
packer.use 'hrsh7th/nvim-cmp'
packer.use 'hrsh7th/cmp-path'
packer.use 'hrsh7th/cmp-nvim-lua'
packer.use 'hrsh7th/cmp-nvim-lsp'
packer.use 'hrsh7th/cmp-buffer'

-- packer.use 'saadparwaiz1/cmp_luasnip'
packer.use 'L3MON4D3/LuaSnip' -- Snippets plugin

-- Check.
local is_cmp, cmp = pcall(require, 'cmp')
if not is_cmp then
  print('NvimCmp not found')
  return
end

-- L3MON4D3/LuaSnip setup
local luasnip = require('luasnip')

cmp.setup {
  snippet = {
    expand = function(args)
      luasnip.lsp_expand(args.body)
    end
  },
  mapping = {
    ['<C-d>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-e>'] = cmp.mapping.close(),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<CR>'] = cmp.mapping.confirm {
      behavior = cmp.ConfirmBehavior.Replace,
      select = true,
    },
  },
  sources = {
    { name = 'path' },
    { name = 'nvim_lua' },
    { name = 'nvim_lsp' },
    { name = 'buffer', keyword_length = 5 },
  },
  experimental = {
    ghost_text = true,
  },
  -- formatting = {
  --   format = lspkind.cmp_format {
  --     with_text = true,
  --     menu = {
  --       path = '[path]',
  --       nvim_lua = '[lua]',
  --       nvim_lsp = '[LSP]',
  --       buffer = '[buffer]',
  --     },
  --   },
  -- },
}
