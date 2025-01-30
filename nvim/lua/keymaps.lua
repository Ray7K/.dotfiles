-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`

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
-- vim.keymap.set(n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- Map C-d to scroll half-page down and center the cursor
vim.api.nvim_set_keymap('n', '<C-d>', '<C-d>zz', { noremap = true, silent = true })
-- Map C-u to scroll half-page up and center the cursor
vim.api.nvim_set_keymap('n', '<C-u>', '<C-u>zz', { noremap = true, silent = true })

vim.keymap.set('n', '<C-x>', ':HighlightColors Toggle<CR>', { desc = 'Highlight the current line' })

vim.keymap.set('n', '-', ':Oil<CR>', { desc = 'Open Oil' })

vim.keymap.set('n', '<leader>sh', ':FzfLua helptags<CR>', { desc = '[S]earch [H]elp' })
vim.keymap.set('n', '<leader>sk', ':FzfLua keymaps<CR>', { desc = '[S]earch [K]eymaps' })
vim.keymap.set('n', '<leader>sf', ':FzfLua files<CR>', { desc = '[S]earch [F]iles' })
vim.keymap.set('n', '<leader>ss', ':FzfLua<CR>', { desc = '[S]earch [S]elect Telescope' })
vim.keymap.set('n', '<leader>sw', ':FzfLua grep_cword<CR>', { desc = '[S]earch current [W]ord' })
vim.keymap.set('n', '<leader>sg', ':FzfLua live_grep<CR>', { desc = '[S]earch by [G]rep' })
vim.keymap.set('n', '<leader>s/', ':FzfLua grep_curbuf<CR>', { desc = '[S]earch by [G]rep' })
vim.keymap.set('n', '<leader>sd', ':FzfLua diagnostics_workspace<CR>', { desc = '[S]earch [D]iagnostics' })
vim.keymap.set('n', '<leader>sr', ':FzfLua resume<CR>', { desc = '[S]earch [R]esume' })
vim.keymap.set('n', '<leader><leader>', ':FzfLua buffers<CR>', { desc = '[ ] Find existing buffers' })
vim.keymap.set('n', '<leader>sa', ':FzfLua git_files<CR>', { desc = '[S]earch git files' })
vim.keymap.set('n', '<leader>g', function() end, { desc = '[G]it' })
vim.keymap.set('n', '<leader>gr', "<CMD>lua require('telescope').extensions.git_worktree.git_worktrees()<CR>", { desc = '[G]it worktree' })
vim.keymap.set('n', '<leader>gs', "<CMD>lua require('telescope').extensions.git_worktree.create_git_worktree()<CR>", { desc = '[G]it [S]witch worktree' })
-- [[ Basic Autocommands ]]
--  See `:help lua-guide-autocommands`

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

-- vim: ts=2 sts=2 sw=2 et
