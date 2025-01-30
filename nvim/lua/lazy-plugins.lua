-- [[ Configure and install plugins ]]
--
--  To check the current status of your plugins, run
--    :Lazy
--
--  You can press `?` in this menu for help. Use `:q` to close the window
--
--  To update plugins you can run
--    :Lazy update
--
-- NOTE: Here is where you install your plugins.
require('lazy').setup({
  -- NOTE: Plugins can be added with a link (or for a github repo: 'owner/repo' link).
  'tpope/vim-sleuth', -- Detect tabstop and shiftwidth automatically

  -- NOTE: Plugins can also be added by using a table,
  -- with the first argument being the link and the following
  -- keys can be used to configure plugin behavior/loading/etc.
  --
  -- Use `opts = {}` to force a plugin to be loaded.
  --

  -- modular approach: using `require 'path/name'` will
  -- include a plugin definition from file lua/path/name.lua
  --

  require 'plugins.gitsigns',

  require 'plugins.render-markdown',

  require 'plugins.which-key',

  require 'plugins.telescope',

  require 'plugins.lspconfig',

  require 'plugins.conform',

  require 'plugins.blink',

  require 'plugins.tokyonight',

  require 'plugins.todo-comments',

  require 'plugins.mini',

  require 'plugins.treesitter',

  require 'plugins.ccc',

  require 'plugins.copilot',

  require 'plugins.blink-copilot',

  require 'plugins.vim-tmux-navigator',

  require 'plugins.harpoon',

  require 'plugins.nvim-highlight-colors',

  require 'plugins.obsession',

  require 'plugins.nui',

  require 'plugins.snacks',

  require 'plugins.transparent',

  require 'plugins.lualine',

  require 'plugins.debug',

  require 'plugins.lint',

  require 'plugins.autopairs',

  require 'plugins.ts-autotag',

  require 'plugins.oil',

  require 'plugins.git-worktree',

  require 'plugins.fugitive',

  require 'plugins.neo-tree',
}, {
  ui = {
    -- If you are using a Nerd Font: set icons to an empty table which will use the
    -- default lazy.nvim defined Nerd Font icons, otherwise define a unicode icons table
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
