local status_ok, packer = pcall(require, 'packer')
if not status_ok then
  return
end

-- Init.
packer.use 'numToStr/Comment.nvim'

-- Check.
local is_comment, comment = pcall(require, 'Comment')
if not is_comment then
  print('Comment not found')
  return
end

-- Config.
comment.setup {}
