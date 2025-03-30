return { -- You can easily change to a different colorscheme.
  -- Change the name of the colorscheme plugin below, and then
  -- change the command in the config to whatever the name of that colorscheme is.
  --
  -- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`.
  'folke/tokyonight.nvim', -- This one does not work on native mac terminal
  -- 'sainnhe/sonokai',
  priority = 1000, -- Make sure to load this before all the other start plugins.
  init = function()
    -- vim.g.sonokai_enable_italic = true
    -- vim.g.sonokai_style = 'default'
    -- vim.g.sonokai_better_performance = 1
    -- vim.cmd.colorscheme 'minischeme'
    vim.cmd.colorscheme 'tokyonight'
    -- Sets background to none -- Allows terminal background as nvim background
    vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' })
    vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none' })
    -- You can configure highlights by doing something like:
    -- vim.cmd.hi 'Comment gui=none'
  end,
}
