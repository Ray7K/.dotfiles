return {
  "nvim-lualine/lualine.nvim",
  opts = function()
    local auto = require("lualine.themes.auto")
    local lualine_modes = { "insert", "normal", "visual", "command", "replace", "inactive", "terminal" }

    -- Modify the background of the `c` section for each mode
    for _, field in ipairs(lualine_modes) do
      if auto[field] and auto[field].c then
        auto[field].c.bg = "NONE"
      end
    end

    -- Return modified options
    return {
      options = {
        theme = auto, -- Apply the modified theme
        globalstatus = vim.o.laststatus == 3,
        disabled_filetypes = { statusline = { "dashboard", "alpha", "ministarter", "snacks_dashboard" } },
        component_separators = { "" },
        section_separators = { "" },
      },
    }
  end,
}
