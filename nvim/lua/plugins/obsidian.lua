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
    legacy_commands = false,

    search = {
      sort_by = 'modified',
      sort_reversed = true,
    },

    statusline = {
      enabled = false,
      format = '{{backlinks}} backlinks  {{words}} words  {{chars}} chars',
    },

    footer = {
      enabled = true,
      format = '{{backlinks}} backlinks  {{words}} words  {{chars}} chars',
      hl_group = 'Comment',
      separator = string.rep('-', 80),
    },

    frontmatter = {
      enabled = false,
    },

    file = {
      ignore_filters = {
        '*.png',
        '*.svg',
        '*.pdf',
      },
    },

    checkbox = {
      enabled = true,
      create_new = true,
      order = { ' ', 'x' },
    },

    ui = {
      enable = false,
    },

    picker = {
      name = 'snacks.picker',
    },

    link = {
      style = 'wiki',
      auto_update = true,
    },

    note_id_func = function(title)
      if title ~= nil then
        return title
      end

      return os.date '%Y%m%d%H%M'
    end,

    workspaces = {
      {
        name = 'personal',
        path = '/Users/raiyankataria/Library/CloudStorage/GoogleDrive-raiyankataria1@gmail.com/My Drive/Obsidian Vault',
      },
    },
    templates = {
      folder = '08-Additional/Templates',
      date_format = 'YYYY-MM-DD',
      time_format = 'HH:mm',

      substitutions = {
        daily_date = function(ctx)
          local filename = ctx.partial_note.id
          return filename
        end,

        daily_heading = function(ctx)
          local filename = ctx.partial_note.id

          local y, m, d = filename:match '^(%d%d%d%d)%-(%d%d)%-(%d%d)$'
          if not y then
            return filename
          end

          local timestamp = os.time {
            year = assert(tonumber(y)),
            month = assert(tonumber(m)),
            day = assert(tonumber(d)),
          }

          return require('obsidian.util').format_date(timestamp, 'dddd, MMMM D, YYYY')
        end,
      },
    },

    notes_subdir = '06-Note Inbox',

    new_notes_location = 'notes_subdir',

    note = {
      template = '08-Additional/Templates/New Note Template.md',
    },

    daily_notes = {
      folder = '05-Journal/Daily',
      template = '08-Additional/Templates/Daily Note Template.md',
    },

    unique_note = {
      format = 'YYYYMMDDHHmm',
      template = '08-Additional/Templates/New Note Template.md',
    },

    attachments = {
      folder = '08-Additional/Attachments',
    },
  },

  keys = {
    -- Notes
    { '<leader>oo', '<cmd>Obsidian quick_switch<cr>', desc = 'Open note' },
    { '<leader>oss', '<cmd>Obsidian search<cr>', desc = 'Search notes' },
    { '<leader>ost', '<cmd>Obsidian tags<cr>', desc = 'Search tags' },
    { '<leader>on', '<cmd>Obsidian new<cr>', desc = 'New note' },
    { '<leader>oN', '<cmd>Obsidian new_from_template<cr>', desc = 'New note from template' },
    { '<leader>ou', '<cmd>Obsidian unique_note<cr>', desc = 'Create unique note' },

    -- Daily notes
    { '<leader>ot', '<cmd>Obsidian today<cr>', desc = 'Today' },
    { '<leader>oy', '<cmd>Obsidian today -1<cr>', desc = 'Yesterday' },
    { '<leader>om', '<cmd>Obsidian today +1<cr>', desc = 'Tomorrow' },
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
  },
}
