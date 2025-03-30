-- To start neo-tree when just nvim is typed
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

-- Redirecting Toggleterm to Warp
-- vim.cmd [[let &shell = '"C:\Program Files\Warp\warp.exe"']]
-- vim.cmd [[let &shellcmdflag = '-s']]
