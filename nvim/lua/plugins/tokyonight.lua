return {
  {
    'folke/tokyonight.nvim',
    lazy = true,
    opts = { style = 'night' },

    init = function()
      vim.cmd.colorscheme 'tokyonight'
    end,
  },
}
