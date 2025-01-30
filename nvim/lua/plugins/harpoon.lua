return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2',
  dependencies = { 'nvim-lua/plenary.nvim' },

  config = function()
    -- REQUIRED
    local harpoon = require 'harpoon'
    harpoon:setup {}

    -- basic telescope configuration
    local conf = require('telescope.config').values
    local function toggle_telescope(harpoon_files)
      local file_paths = {}
      for _, item in ipairs(harpoon_files.items) do
        table.insert(file_paths, item.value)
      end

      require('telescope.pickers')
        .new({}, {
          prompt_title = 'Harpoon',
          finder = require('telescope.finders').new_table {
            results = file_paths,
          },
          previewer = conf.file_previewer {},
          sorter = conf.generic_sorter {},
        })
        :find()
    end

    vim.keymap.set('n', '<Leader>e', function() end, { desc = '[ ] Harpoon' })

    vim.keymap.set('n', '<C-e>', function()
      harpoon.ui:toggle_quick_menu(harpoon:list())
    end, { desc = '[E]dit harpoon' })

    vim.keymap.set('n', '<Leader>es', function()
      toggle_telescope(harpoon:list())
    end, { desc = '[S]earch harpoon' })

    vim.keymap.set('n', '<Leader>ea', function()
      harpoon:list():add()
    end, { desc = '[A]dd buffer to harpoon' })

    -- Toggle previous & next buffers stored within Harpoon list
    vim.keymap.set('n', '<Leader>ep', function()
      harpoon:list():prev()
    end, { desc = '[P]revious' })
    vim.keymap.set('n', '<Leader>en', function()
      harpoon:list():next()
    end, { desc = '[N]ext' })

    vim.keymap.set('n', '<Leader>e1', function()
      harpoon:list():select(1)
    end, { desc = '[1]st' })
    vim.keymap.set('n', '<Leader>e2', function()
      harpoon:list():select(2)
    end, { desc = '[2]nd' })
    vim.keymap.set('n', '<Leader>e3', function()
      harpoon:list():select(3)
    end, { desc = '[3]rd' })
    vim.keymap.set('n', '<Leader>e4', function()
      harpoon:list():select(4)
    end, { desc = '[4]th' })
    vim.api.nvim_set_hl(0, 'harpoonborder', { fg = 'NONE', bg = 'NONE' })
    vim.api.nvim_set_hl(0, 'harpoonwindow', { fg = 'NONE', bg = 'NONE' })
  end,
}
