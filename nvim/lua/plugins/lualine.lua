return {
  'nvim-lualine/lualine.nvim',
  event = 'VeryLazy',
  dependencies = {
    'echasnovski/mini.icons',
  },
  opts = function()
    require('mini.icons').setup()
    require('mini.icons').mock_nvim_web_devicons()

    local auto = require 'lualine.themes.auto'
    local lualine_modes = { 'insert', 'normal', 'visual', 'command', 'replace', 'inactive', 'terminal' }

    -- Modify the background of the `c` section for each mode
    for _, field in ipairs(lualine_modes) do
      if auto[field] and auto[field].c then
        auto[field].c.bg = 'NONE'
      end
    end

    -- Return modified options
    return {
      options = {
        theme = auto, -- Apply the modified theme
        globalstatus = vim.o.laststatus == 3,
        disabled_filetypes = { statusline = { 'dashboard', 'alpha', 'ministarter', 'snacks_dashboard', 'snacks_layout_box', 'oil' } },
        ignore_focus = {
          'dapui_watches',
          'dapui_breakpoints',
          'dapui_scopes',
          'dapui_console',
          'dapui_stacks',
          'dap-repl',
        },

        component_separators = { '' },
        section_separators = { '' },
      },
      sections = {
        lualine_x = {
          'b:obsidian_status',
        },
        lualine_c = {
          { 'filename' },
          {
            'macro',
            fmt = function()
              local reg = vim.fn.reg_recording()
              if reg ~= '' then
                return 'Recording @' .. reg
              end
              return nil
            end,
            color = { fg = '#ff9e64' },
            draw_empty = false,
          },
        },
      },
    }
  end,
}
