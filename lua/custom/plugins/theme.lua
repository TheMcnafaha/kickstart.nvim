-- File: lua/custom/plugins/autopairs.lua
-- X~b:3UrcQ)#AcXHqS2i-
return {
  'bluz71/vim-moonfly-colors',
  priority = 1000,
  name = 'moonfly',
  lazy = false,
  config = function()
    vim.cmd.colorscheme 'moonfly'
  end,
}
-- return {
--   'bluz71/vim-nightfly-colors',
--   name = 'nightfly',
--   lazy = false,
--   priority = 1000,
--   config = function()
--     -- Lua initialization file
--     vim.cmd.colorscheme 'nightfly'
--   end,
-- }
