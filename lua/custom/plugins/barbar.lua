return {
  'romgrk/barbar.nvim',
  dependencies = {
    'lewis6991/gitsigns.nvim', -- OPTIONAL: for git status
    'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
  },
  init = function()
    vim.g.barbar_auto_setup = false
  end,
  event = 'BufEnter',
  opts = {
    -- lazy.nvim will automatically call setup for you. put your options here, anything missing will use the default:
    -- animation = true,
    -- insert_at_start = true,
    -- …etc.
  },
  keys = {
    { '<A-,>', '<cmd>BufferPrevious<cr>', desc = 'Previous buffer' },
    { '<A-.>', '<cmd>BufferNext<cr>', desc = 'Next buffer' },
    { '<A-w>', '<cmd>BufferClose<cr>', desc = 'Close buffer' },
    { '<A-q>', '<cmd>BufferCloseAllButVisible<cr>', desc = 'Close all buffers but visible' },
    { '<A><A>', '<cmd>BufferPick<cr>', desc = 'Buffer pick' },
    { '<A><A>', '<cmd>BufferPickDelete<cr>', desc = 'Buffer pick delete' },
  },
  version = '^1.0.0', -- optional: only update when a new 1.x version is released
}
