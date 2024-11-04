return {
  'nvim-neo-tree/neo-tree.nvim',
  branch = 'v3.x',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
    -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
  },
  config = true,
  keys = {
    { '<leader>t', '<cmd>Neotree<cr>', desc = 'Toggle Neo[T]ree' },
  },
  opts = {
    filesystem = {
      filtered_items = {
        hide_dotfiles = false,
        hide_gitignored = false,
        never_show = {
          '.DS_Store',
          'thumbs.db',
        },
      },
      follow_current_file = {
        enabled = true,
      },
      hijack_netrw_behavior = 'open_default',
    },
  },
}
