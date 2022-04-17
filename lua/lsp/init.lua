local status_ok, packer = pcall(require, 'packer')
if not status_ok then
  return
end

-- Init.
packer.use {
  'neovim/nvim-lspconfig',
  'williamboman/nvim-lsp-installer',
}

-- Check.
local is_installer, lsp_installer  = pcall(require, 'nvim-lsp-installer')
if not is_installer then
  print('NvimLspInstaller not found')
  return
end

-- Servers default.
local servers = {
  'bashls',
  'sumneko_lua',
  'tsserver',
  'vuels',
  'volar',
  'html',
  'cssls',
  'jsonls'
}

-- Install default servers.
for _, name in pairs(servers) do
  local server_is_found, server = lsp_installer.get_server(name)
  if server_is_found then
    if not server:is_installed() then
      print('Installing ' .. name)
      server:install()
    end
  end
end

-- Handlers.
local handlers = require('lsp.handlers')

-- Config.
lsp_installer.on_server_ready(function(server)
  local opts = { on_attach = handlers.on_attach }

  -- Add additional capabilities supported by nvim-cmp
  local is_cmp_lsp, cmp_lsp = pcall(require, 'cmp_nvim_lsp')
  if is_cmp_lsp then
    local capabilities = vim.lsp.protocol.make_client_capabilities()
    opts.capabilities = cmp_lsp.update_capabilities(capabilities)
  end

  -- Settings lua.
  if server.name == 'sumneko_lua' then
    local sumneko_opts = require('lsp.settings.sumneko_lua')
    opts = vim.tbl_deep_extend('force', sumneko_opts, opts)
  end

  server:setup(opts)
end)
