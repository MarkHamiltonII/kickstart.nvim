return {
  'nvim-neo-tree/neo-tree.nvim',
  branch = 'v3.x',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons',
    'MunifTanjim/nui.nvim',
    -- {"3rd/image.nvim", opts = {}}, -- Optional image support in preview window: See `# Preview Mode` for more information
  },
  config = function()
    vim.keymap.set('n', '<C-b>', ':Neotree filesystem toggle left<CR>')
    require('neo-tree').setup {
      filesystem = {
        window = {
          mappings = {
            ['.'] = 'toggle_hidden',
            ['<C-b>'] = function()
              vim.api.nvim_exec('Neotree toggle filesystem left', true)
            end,
          },
        },
      },
    }
  end,
  -- opts = {
  --   filesystem = {
  --     window = {
  --       mappings = {
  --         ['.'] = 'toggle_hidden',
  --         ['<C-b>'] = 'toggle',
  --       },
  --     },
  --   },
  -- },
}
