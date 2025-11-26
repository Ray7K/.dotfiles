return {
  'sindrets/diffview.nvim',
  opts = {
    view = {
      default = {
        disable_file_panel = true,
      },
    },
  },
  config = function()
    local map = function(mode, lhs, rhs, desc)
      vim.keymap.set(mode, lhs, rhs, { desc = desc })
    end

    map('n', '<leader>gdd', '<cmd>DiffviewOpen<CR>', 'Diff (Working tree vs Index/HEAD)')
    map('n', '<leader>gds', '<cmd>DiffviewOpen --staged<CR>', 'Diff (Staged vs HEAD)')
    map('n', '<leader>gdh', '<cmd>DiffviewFileHistory %<CR>', 'File History (current file)')
    map('n', '<leader>gdH', '<cmd>DiffviewFileHistory<CR>', 'Repo History')
    map('n', '<leader>gde', '<cmd>DiffviewToggleFiles<CR>', 'Toggle Files Panel')
    map('n', '<leader>gdr', '<cmd>DiffviewRefresh<CR>', 'Refresh Diffview')
    map('n', '<leader>gdc', '<cmd>DiffviewClose<CR>', 'Close Diffview')
  end,
}
