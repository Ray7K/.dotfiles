return {
  'uga-rosa/ccc.nvim',
  config = function()
    -- Enable true color
    vim.opt.termguicolors = true

    local ccc = require 'ccc'
    local mapping = ccc.mapping

    -- Plugin setup
    ccc.setup {
      -- Your preferred settings
      highlighter = {
        auto_enable = false,
        lsp = true,
      },
    }
  end,
}
