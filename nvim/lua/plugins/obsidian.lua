return {
  'obsidian-nvim/obsidian.nvim',
  lazy = true,
  version = '*', -- use latest release, remove to use latest commit
  event = {
    'BufReadPre ' .. vim.fn.expand '~/Library/CloudStorage/GoogleDrive-raiyankataria1@gmail.com/My Drive/Obsidian Vault' .. '/**.md',
    'BufNewFile ' .. vim.fn.expand '~/Library/CloudStorage/GoogleDrive-raiyankataria1@gmail.com/My Drive/Obsidian Vault' .. '/**.md',
  },
  dependencies = {
    'nvim-lua/plenary.nvim',
  },
  ---@type obsidian.config
  opts = {
    workspaces = {
      {
        name = 'personal',
        path = '/Users/raiyankataria/Library/CloudStorage/GoogleDrive-raiyankataria1@gmail.com/My Drive/Obsidian Vault',
      },
    },

    legacy_commands = false,

    notes_subdir = '05-Note Inbox',

    note = {
      template = nil,
    },

    new_notes_location = 'notes_subdir',

    note_id_func = function(title)
      if title then
        return title
      else
        return tostring(os.time())
      end
    end,

    frontmatter = {
      enabled = false,
      sort = false,
    },

    templates = {
      folder = '07-Additional/Templates',
    },

    search = {
      sort_by = 'modified',
      sort_reversed = true,
    },

    file = {
      ignore_filters = {
        '*.png',
        '*.svg',
        '*.pdf',
      },
    },

    daily_notes = {
      folder = '05-Note Inbox/Journal/Daily',
    },

    link = {
      style = 'wiki',
      auto_update = true,
    },

    attachments = {
      folder = '07-Additional/Attachments',
    },

    checkbox = {
      enabled = true,
      create_new = true,
      order = { ' ', 'x' },
    },

    footer = {
      enabled = false,
    },

    ui = {
      enable = false,
    },

    picker = {
      name = 'snacks.picker',
    },
  },
  keys = {
    -- Notes
    { '<leader>oo', '<cmd>Obsidian quick_switch<cr>', desc = 'Open note' },
    { '<leader>oss', '<cmd>Obsidian search<cr>', desc = 'Search notes' },
    { '<leader>ost', '<cmd>Obsidian tags<cr>', desc = 'Search tags' },
    { '<leader>on', '<cmd>Obsidian new<cr>', desc = 'New note' },

    -- Daily notes
    { '<leader>ot', '<cmd>Obsidian today<cr>', desc = 'Today' },
    { '<leader>oy', '<cmd>Obsidian yesterday<cr>', desc = 'Yesterday' },
    { '<leader>om', '<cmd>Obsidian tomorrow<cr>', desc = 'Tomorrow' },
    { '<leader>od', '<cmd>Obsidian dailies<cr>', desc = 'Daily notes' },

    -- Current note
    { '<leader>ob', '<cmd>Obsidian backlinks<cr>', desc = 'Backlinks' },
    { '<leader>ol', '<cmd>Obsidian links<cr>', desc = 'Links' },
    { '<leader>oc', '<cmd>Obsidian toc<cr>', desc = 'Contents' },
    { '<leader>or', '<cmd>Obsidian rename<cr>', desc = 'Rename note' },

    -- Tasks
    { '<leader>ox', '<cmd>Obsidian toggle_checkbox<cr>', desc = 'Toggle checkbox' },

    -- Templates
    { '<leader>op', '<cmd>Obsidian template<cr>', desc = 'Insert template' },

    -- Images
    { '<leader>oi', '<cmd>Obsidian paste_img<cr>', desc = 'Paste image' },

    -- Obsidian GUI
    { '<leader>oa', '<cmd>Obsidian open<cr>', desc = 'Open in Obsidian' },

    -- Navigation
    { 'gf', '<cmd>Obsidian follow_link<cr>', desc = 'Follow link' },
  },
}
