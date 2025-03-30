return {
  'akinsho/toggleterm.nvim',
  version = '*',
  config = function()
    require('toggleterm').setup {
      open_mapping = [[<c-\>]],
      direction = 'horizontal', -- 'float'
    }
    vim.keymap.set('t', '<C-h>', [[<Cmd>wincmd h<CR>]])
    vim.keymap.set('t', '<C-j>', [[<Cmd>wincmd j<CR>]])
    vim.keymap.set('t', '<C-k>', [[<Cmd>wincmd k<CR>]])
    vim.keymap.set('t', '<C-l>', [[<Cmd>wincmd l<CR>]])
  end,
}
