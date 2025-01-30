return {
  { -- You can easily change to a different colorscheme.
    -- Change the name of the colorscheme plugin below, and then
    -- change the command in the config to whatever the name of that colorscheme is.
    --
    -- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`.
    'folke/tokyonight.nvim',
    priority = 1000, -- Make sure to load this before all the other start plugins.
    init = function()
      -- Load the colorscheme here.
      -- Like many other themes, this one has different styles, and you could load
      -- any other, such as 'tokyonight-storm', 'tokyonight-moon', or 'tokyonight-day'.
      vim.cmd.colorscheme 'tokyonight-night'

      -- You can configure highlights by doing something like:
      vim.cmd.hi 'Comment gui=none'

      -- vim.cmd [[
      --   " General UI elements
      --   highlight Normal guibg=NONE ctermbg=NONE
      --   highlight NonText guibg=NONE ctermbg=NONE
      --   highlight LineNr guibg=NONE ctermbg=NONE
      --   highlight CursorLine guibg=NONE ctermbg=NONE
      --   highlight CursorLineNr guibg=NONE ctermbg=NONE
      --   highlight VertSplit guibg=NONE ctermbg=NONE
      --   highlight SignColumn guibg=NONE ctermbg=NONE
      --   highlight FoldColumn guibg=NONE ctermbg=NONE
      --
      --
      --   highlight NotifyERRORBody guibg=NONE ctermbg=NONE
      --   highlight NotifyWARNBody guibg=NONE ctermbg=NONE
      --   highlight NotifyINFOBody guibg=NONE ctermbg=NONE
      --   highlight NotifyDEBUGBody guibg=NONE ctermbg=NONE
      --   highlight NotifyTRACEBody guibg=NONE ctermbg=NONE
      -- ]]
    end,
  },
}
-- vim: ts=2 sts=2 sw=2 et
