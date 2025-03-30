-- [[ Basic Autocommands ]]
--  See `:help lua-guide-autocommands`

-- Sets esc to be the termial code for escape
local esc = vim.api.nvim_replace_termcodes('<Esc>', true, true, true)

-- Console.log macro
vim.api.nvim_create_augroup('ConsoleLogMacro', {})
vim.api.nvim_create_autocmd('Filetype', {
  group = 'ConsoleLogMacro',
  pattern = { 'javascript', 'javascriptreact', 'typescript', 'typescriptreact' },
  callback = function()
    vim.fn.setreg('l', 'yoconsole.log(">> ' .. esc .. 'pa:", ' .. esc .. 'pa);' .. esc .. '' .. esc .. '')
  end,
})

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

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})
