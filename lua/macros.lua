-- Sets esc to be the termial code for escape
local esc = vim.api.nvim_replace_termcodes('<Esc>', true, true, true)
-- Console.log macro
vim.fn.setreg('l', 'yoconsole.log(">> ' .. esc .. 'pa:", ' .. esc .. 'pa);' .. esc .. '' .. esc .. '')
