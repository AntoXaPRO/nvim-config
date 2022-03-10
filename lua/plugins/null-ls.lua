local status_ok, packer = pcall(require, 'packer')
if not status_ok then
  return
end

-- Init.
packer.use 'jose-elias-alvarez/null-ls.nvim'

-- Check.
local is_null_ls, null_ls = pcall(require, 'null-ls')
if not is_null_ls then
  print('NullLs not found')
  return
end

local fn = vim.fn
local config_path = fn.stdpath('config')
local formatting = null_ls.builtins.formatting

-- Config.
null_ls.setup {
  debug = false,
  sources = {
    formatting.prettier.with({
      extra_args = {
        '--config',
        vim.fn.expand(config_path..'/utils/linter-config/.prettierrc')
      }
    })
  }
}
