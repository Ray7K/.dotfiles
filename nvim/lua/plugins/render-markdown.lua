return {
  'MeanderingProgrammer/render-markdown.nvim',
  event = 'VeryLazy',
  dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.nvim' }, -- if you use the mini.nvim suite
  -- dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.icons' }, -- if you use standalone mini plugins
  -- dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' }, -- if you prefer nvim-web-devicons
  ---@module 'render-markdown'
  ---@type render.md.UserConfig
  opts = {
    completions = {
      blink = { enabled = true },
      lsp = { enabled = true },
    },
    bullet = {
      icons = { '▪', '▫' },
    },
    latex = {
      enabled = false,
    },
    checkbox = {
      enabled = true,

      unchecked = {
        icon = '󰄱 ',
      },

      checked = {
        icon = '󰱒 ',
      },

      custom = {
        important = {
          raw = '[!]',
          rendered = ' ',
          highlight = 'RenderMarkdownWarn',
        },

        cancelled = {
          raw = '[-]',
          rendered = '󰜺 ',
          highlight = 'RenderMarkdownError',
        },

        in_progress = {
          raw = '[/]',
          rendered = '󰔟 ',
          highlight = 'RenderMarkdownInfo',
        },

        forwarded = {
          raw = '[>]',
          rendered = '󰒊 ',
          highlight = 'RenderMarkdownHint',
        },

        question = {
          raw = '[?]',
          rendered = ' ',
          highlight = 'RenderMarkdownInfo',
        },

        scheduled = {
          raw = '[<]',
          rendered = '󰃭 ',
          highlight = 'RenderMarkdownHint',
        },

        star = {
          raw = '[*]',
          rendered = '󰓎 ',
          highlight = 'RenderMarkdownSuccess',
        },

        location = {
          raw = '[l]',
          rendered = '󰍎 ',
          highlight = 'RenderMarkdownInfo',
        },

        bookmark = {
          raw = '[b]',
          rendered = '󰃀 ',
          highlight = 'RenderMarkdownInfo',
        },

        idea = {
          raw = '[i]',
          rendered = '󰛨 ',
          highlight = 'RenderMarkdownHint',
        },

        pros = {
          raw = '[p]',
          rendered = '󰖷 ',
          highlight = 'RenderMarkdownSuccess',
        },

        cons = {
          raw = '[c]',
          rendered = '󰅚 ',
          highlight = 'RenderMarkdownError',
        },

        fire = {
          raw = '[f]',
          rendered = '󰈸 ',
          highlight = 'RenderMarkdownWarn',
        },

        key = {
          raw = '[k]',
          rendered = '󰌆 ',
          highlight = 'RenderMarkdownWarn',
        },

        win = {
          raw = '[w]',
          rendered = '󰄬 ',
          highlight = 'RenderMarkdownSuccess',
        },

        quote = {
          raw = '["]',
          rendered = '󱆨 ',
          highlight = 'RenderMarkdownInfo',
        },
      },
    },
  },
}
