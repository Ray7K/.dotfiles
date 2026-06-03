return {
  {
    'nvim-treesitter/nvim-treesitter',
    branch = 'main',
    lazy = false,
    build = ':TSUpdate',
    dependencies = {
      {
        'nvim-treesitter/nvim-treesitter-textobjects',
        branch = 'main',
        dependencies = { 'nvim-treesitter/nvim-treesitter' },
        config = function()
          local ts_repeat = require 'nvim-treesitter-textobjects.repeatable_move'
          local move = require 'nvim-treesitter-textobjects.move'
          local select = require 'nvim-treesitter-textobjects.select'

          require('nvim-treesitter-textobjects').setup {
            move = { set_jumps = true },
            select = {
              lookahead = true,
              selection_modes = {
                ['@function.outer'] = 'V',
                ['@class.outer'] = 'V',
              },
            },
          }

          vim.keymap.set({ 'n', 'x', 'o' }, ';', ts_repeat.repeat_last_move_next)
          vim.keymap.set({ 'n', 'x', 'o' }, ',', ts_repeat.repeat_last_move_previous)
          vim.keymap.set({ 'n', 'x', 'o' }, 'f', ts_repeat.builtin_f_expr, { expr = true })
          vim.keymap.set({ 'n', 'x', 'o' }, 'F', ts_repeat.builtin_F_expr, { expr = true })
          vim.keymap.set({ 'n', 'x', 'o' }, 't', ts_repeat.builtin_t_expr, { expr = true })
          vim.keymap.set({ 'n', 'x', 'o' }, 'T', ts_repeat.builtin_T_expr, { expr = true })

          vim.keymap.set({ 'n', 'x', 'o' }, ']f', function()
            move.goto_next_start('@function.outer', 'textobjects')
          end)
          vim.keymap.set({ 'n', 'x', 'o' }, '[f', function()
            move.goto_previous_start('@function.outer', 'textobjects')
          end)

          vim.keymap.set({ 'n', 'x', 'o' }, ']c', function()
            move.goto_next_start('@class.outer', 'textobjects')
          end)

          vim.keymap.set({ 'n', 'x', 'o' }, '[c', function()
            move.goto_previous_start('@class.outer', 'textobjects')
          end)

          vim.keymap.set({ 'x', 'o' }, 'af', function()
            select.select_textobject('@function.outer', 'textobjects')
          end)
          vim.keymap.set({ 'x', 'o' }, 'if', function()
            select.select_textobject('@function.inner', 'textobjects')
          end)

          vim.keymap.set({ 'x', 'o' }, 'ac', function()
            select.select_textobject('@class.outer', 'textobjects')
          end)
          vim.keymap.set({ 'x', 'o' }, 'ic', function()
            select.select_textobject('@class.inner', 'textobjects')
          end)
        end,
      },
    },
    config = function()
      local ts = require 'nvim-treesitter'

      ts.install {
        'asm',
        'bash',
        'bibtex',
        'c',
        'cpp',
        'cmake',
        'c-sharp',
        'css',
        'csv',
        'diff',
        'disassembly',
        'go',
        'html',
        'http',
        'java',
        'javascript',
        'json',
        'kconfig',
        'llvm',
        'lua',
        'luadoc',
        'make',
        'markdown',
        'markdown_inline',
        'nix',
        'python',
        'query',
        'regex',
        'rust',
        'sql',
        'toml',
        'typescript',
        'vim',
        'vimdoc',
        'xml',
        'yaml',
        'zig',
      }

      local group = vim.api.nvim_create_augroup('TreesitterMain', { clear = true })

      vim.api.nvim_create_autocmd('FileType', {
        group = group,
        callback = function(args)
          if vim.bo[args.buf].buftype ~= '' then
            return
          end

          pcall(vim.treesitter.start, args.buf)

          vim.wo.foldmethod = 'expr'
          vim.wo.foldexpr = 'v:lua.vim.treesitter.foldexpr()'

          if vim.bo[args.buf].filetype ~= 'ruby' then
            vim.bo[args.buf].indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
          end
        end,
      })
    end,
  },
}
