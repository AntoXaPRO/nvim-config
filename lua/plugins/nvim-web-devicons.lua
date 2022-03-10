local status_ok, packer = pcall(require, 'packer')
if not status_ok then
  return
end

-- Init.
packer.use 'kyazdani42/nvim-web-devicons'

-- Check.
local is_icons, icons = pcall(require, 'nvim-web-devicons')
if not is_icons then
  print('WebDevicons not found')
  return
end

-- Config.
icons.setup {
  default = true
}

-- Downloads fonts: https://www.nerdfonts.com/font-downloads
-- Downloads fonts: https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/3270.zip
