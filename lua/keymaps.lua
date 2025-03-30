-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`

vim.keymap.set('n', '<leader>v', ':vsplit<CR>', { desc = '[v]ertical split' })
vim.keymap.set('n', '<leader>h', ':split<CR>', { desc = '[h]orizontal split' })

-- [[ VSCode Style Keymaps ]]
-- move line up or down
vim.keymap.set('n', '<A-j>', ':m .+1<CR>==', { desc = 'Move line down' })
vim.keymap.set('n', '<A-k>', ':m .-2<CR>==', { desc = 'Move line up' })
vim.keymap.set('i', '<A-j>', '<Esc>:m .+1<CR>==gi', { desc = 'Move line down' })
vim.keymap.set('i', '<A-k>', '<Esc>:m .-2<CR>==gi', { desc = 'Move line up' })
vim.keymap.set('v', '<A-j>', ":m '>+1<CR>gv=gv", { desc = 'Move section down' })
vim.keymap.set('v', '<A-k>', ":m '<-2<CR>gv=gv", { desc = 'Move section up' })
vim.keymap.set('n', '<A-Down>', ':m .+1<CR>==', { desc = 'Move line down' })
vim.keymap.set('n', '<A-Up>', ':m .-2<CR>==', { desc = 'Move line up' })
vim.keymap.set('i', '<A-Down>', '<Esc>:m .+1<CR>==gi', { desc = 'Move line down' })
vim.keymap.set('i', '<A-Up>', '<Esc>:m .-2<CR>==gi', { desc = 'Move line up' })
vim.keymap.set('v', '<A-Down>', ":m '>+1<CR>gv=gv", { desc = 'Move section down' })
vim.keymap.set('v', '<A-Up>', ":m '<-2<CR>gv=gv", { desc = 'Move section up' })
-- copy line up or down
vim.keymap.set('n', '<A-J>', 'yyp', { desc = 'Copy line down' })
vim.keymap.set('n', '<A-K>', 'yyP', { desc = 'Copy line up' })
-- control space functionality
vim.keymap.set('n', '<C-Space>', function()
  vim.lsp.buf.completion_item()
end, { desc = 'Show autocompletions' })

-- [[ Primagen Keymaps ]]
-- Keep cursor centered during navigation
vim.keymap.set('n', 'J', 'mzJ`z', { desc = 'Concatenate next line (centered)' })
vim.keymap.set('n', '<C-d>', '<C-d>zz', { desc = 'Half page down (centered)' })
vim.keymap.set('n', '<C-u>', '<C-u>zz', { desc = 'Half page up (centered)' })
vim.keymap.set('n', 'n', 'nzzzv', { desc = '[n]ext search option (centered)' })
vim.keymap.set('n', 'N', 'Nzzzv', { desc = 'Previous search optio[N] (centered)' })
-- Using void register to fix paste and delete
vim.keymap.set('x', '<leader>p', '"_dP', { desc = 'Safe re[p]lace' })
vim.keymap.set('n', '<leader><BS>', '"_d', { desc = '[D]elete to void' })
vim.keymap.set('v', '<leader><BS>', '"_d', { desc = '[D]elete to void' })
vim.keymap.set('n', '<leader>x', '"_x', { desc = '[x]elete to void' })

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- TIP: Disable arrow keys in normal mode
-- vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
-- vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
-- vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
-- vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })
