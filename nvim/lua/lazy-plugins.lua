require('lazy').setup({
  require 'plugins.sleuth',

  require 'plugins.gitsigns',

  require 'plugins.render-markdown',

  require 'plugins.which-key',

  require 'plugins.lspconfig',

  require 'plugins.conform',

  require 'plugins.blink',

  require 'plugins.tokyonight',

  require 'plugins.todo-comments',

  require 'plugins.mini',

  require 'plugins.treesitter',

  require 'plugins.copilot',

  require 'plugins.blink-copilot',

  require 'plugins.vim-tmux-navigator',

  require 'plugins.harpoon',

  require 'plugins.yanky',

  require 'plugins.nvim-highlight-colors',

  require 'plugins.persistence',

  require 'plugins.nui',

  require 'plugins.snacks',

  require 'plugins.transparent',

  require 'plugins.lualine',

  require 'plugins.debug',

  require 'plugins.lint',

  require 'plugins.ts-autotag',

  require 'plugins.oil',

  require 'plugins.fugitive',

  require 'plugins.noice',

  require 'plugins.clangd_extensions',
}, {
  ui = {
    icons = vim.g.have_nerd_font and {} or {
      cmd = '⌘',
      config = '🛠',
      event = '📅',
      ft = '📂',
      init = '⚙',
      keys = '🗝',
      plugin = '🔌',
      runtime = '💻',
      require = '🌙',
      source = '📄',
      start = '🚀',
      task = '📌',
      lazy = '💤 ',
    },
  },
})
