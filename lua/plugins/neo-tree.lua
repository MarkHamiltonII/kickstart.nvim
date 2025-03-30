return {
  'nvim-neo-tree/neo-tree.nvim',
  branch = 'v3.x',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons',
    'MunifTanjim/nui.nvim',
    -- {"3rd/image.nvim", opts = {}}, -- Optional image support in preview window: See `# Preview Mode` for more information
  },
  cmd = 'Neotree',
  keys = {
    { '\\', ':Neotree toggle<CR>', desc = 'Neotree toggle', silent = true },
  },
  opts = {
    filesystem = {
      window = {
        mappings = {
          ['\\'] = 'close_window',
          ['<leader>.'] = 'toggle_hidden',
          ['P'] = { 'toggle_preview', config = { use_float = false }, },
        },
      },
    },
  },
  config = function()
    vim.api.nvim_create_augroup('neotree', {})
    vim.api.nvim_create_autocmd('VimEnter', {
      desc = 'Open Neotree automatically',
      group = 'neotree',
      callback = function()
        if vim.fn.argc() == 0 then
          vim.api.nvim_exec('Neotree toggle', true)
        end
      end,
    })
    require('neo-tree').setup()
    -- require('neo-tree').setup {
    --   filesystem = {
    --     window = {
    --       mappings = {
    --         ['.'] = 'toggle_hidden',
    --         ['<C-b>'] = function()
    --           vim.api.nvim_exec('Neotree toggle filesystem left', true)
    --         end,
    --       },
    --     },
    --   },
    -- }
  end,
}
