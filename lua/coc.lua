local status_ok, packer = pcall(require, 'packer')
if not status_ok then
  return
end

-- Init.
packer.use { 'neoclide/coc.nvim', branch = 'release' }

-- Config.
local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

keymap('n', '<leader>.', '<Plug>(coc-codeaction)', {})
keymap('n', 'gd', '<Plug>(coc-definition)', { silent = true })
keymap('n', 'K', ':call CocActionAsync("doHover")<CR>', opts)
keymap('n', '<leader>l', ':CocCommand eslint.executeAutofix<CR>', {})
keymap('n', '<leader>rn', '<Plug>(coc-rename)', {})
keymap('i', '<C-Space>', 'coc#refresh()', { silent = true, expr = true })
keymap('i', '<TAB>', 'pumvisible() ? "<C-n>" : "<TAB>"', { noremap = true, silent = true, expr = true })
keymap('i', '<S-TAB>', 'pumvisible() ? "<C-p>" : "<C-h>"', { noremap = true, expr = true })
keymap('i', '<CR>', 'pumvisible() ? coc#_select_confirm() : "<C-G>u<CR><C-R>=coc#on_enter()<CR>"', { silent = true, expr = true, noremap = true })

keymap('n', '<leader>f', ':CocCommand prettier.formatFile<CR>', { noremap = true })
