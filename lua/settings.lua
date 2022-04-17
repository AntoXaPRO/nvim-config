local opt = vim.opt

opt.hidden = true
opt.encoding = 'utf-8'
opt.fileencoding = 'utf-8'      -- the encoding written to a file
opt.swapfile = false            -- creates a swapfile
opt.backup = false              -- creates a backup file
opt.writebackup = false
opt.clipboard = 'unnamedplus'   -- allows neovim to access the system clipboard

opt.expandtab = true            -- convert tabs to spaces
opt.tabstop = 2                 -- insert 2 spaces for a tab
opt.shiftwidth = 2              -- the number of spaces inserted for each indentation
opt.numberwidth = 2

opt.number = true               -- number lines
opt.relativenumber = true       -- relative numbers
opt.colorcolumn = '79'          -- code right border
opt.cursorline = true           -- line cursor
opt.showmode = false            -- disable show mode
opt.showtabline = 2             -- visible tabline
opt.signcolumn = 'yes'          -- visible left column notification lsp

opt.scrolloff = 5
opt.termguicolors = true
opt.updatetime = 300

-- Mappings.
vim.g.mapleader = ' '

local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Show Explore.
keymap('n', '<A-e>', ':Explore<CR>', opts)

-- Tabs.
keymap('n', '<C-Right>', ':tabnext<CR>', opts)
keymap('n', '<C-Left>', ':tabprevious<CR>', opts)

keymap('n', '<C-S-Right>', ':+tabmove<CR>', opts)
keymap('n', '<C-S-Left>', ':-tabmove<CR>', opts)

-- Formating
vim.cmd [[command! Format execute 'lua vim.lsp.buf.formatting()']]

-- Config foldings.
-- vim.cmd [[autocmd BufWinLeave *.* mkview]]
-- vim.cmd [[autocmd BufWinEnter *.* silent loadview]]
