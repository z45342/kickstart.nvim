-- ~/.config/nvim/lua/plugins/copilot.lua

return {
  {
    'zbirenbaum/copilot.lua',
    cmd = 'Copilot',
    event = 'InsertEnter',
    config = function()
      require('copilot').setup {
        suggestion = {
          enabled = true,
          auto_trigger = true,
          debounce = 75,
          keymap = {
            accept = '<Tab>',
            accept_word = false,
            accept_line = false,
            next = '<M-]>',
            prev = '<M-[>',
            dismiss = '<C-]>',
          },
        },
        panel = { enabled = false },
      }
    end,
  },

  --   -- Optional: integrate with nvim-cmp
  l, --   {
  --     "zbirenbaum/copilot-cmp",
  --     dependencies = { "zbirenbaum/copilot.lua" },
  --     config = function()
  --       require("copilot_cmp").setup()
  --     end,
  --   },
}
