-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'mrbjarksen/neo-tree-diagnostics.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  cmd = 'Neotree',
  keys = {
    { '\\', ':Neotree reveal<CR>', { desc = 'NeoTree reveal' } },
  },
  opts = {
    close_if_last_window = true,
    event_handlers = {
      {
        event = 'neo_tree_buffer_enter',
        handler = function()
          vim.cmd 'highlight Cursor blend=100'
          vim.cmd 'set guicursor+=a:Cursor/lCursor'
        end,
      },
      {
        event = 'neo_tree_buffer_leave',
        handler = function()
          vim.cmd 'highlight Cursor blend=0'
          vim.cmd 'set guicursor+=a:Cursor/lCursor'
        end,
      },
    },
    filesystem = {
      window = {
        mappings = {
          ['\\'] = 'close_window',
        },
      },
    },
  },
}
