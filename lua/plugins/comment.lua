local status_ok, packer = pcall(require, 'packer')
if not status_ok then
  return
end

-- Init.
packer.use {
  'terrortylor/nvim-comment',
  config = function()
    require('nvim_comment').setup()
  end
}

-- Check.
-- local is_comment, comment = pcall(require, 'Comment')
-- if not is_comment then
--  print('Comment not found')
--  return
-- end

-- Config.
