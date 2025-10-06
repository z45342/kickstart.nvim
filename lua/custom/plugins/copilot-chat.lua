-- ~/.config/nvim/lua/plugins/copilot-chat.lua
return {
  'CopilotC-Nvim/CopilotChat.nvim',
  branch = 'canary',
  dependencies = {
    { 'zbirenbaum/copilot.lua' }, -- uses your existing Copilot auth
  },
  opts = {
    debug = false,
    show_help = true,
    mappings = {
      complete = { insert = '<Tab>', normal = '<Tab>' },
      close = { normal = 'q' },
    },
    window = {
      layout = 'vertical', -- or 'horizontal'
      width = 0.4,
      height = 0.5,
    },
  },
  keys = {
    {
      '<leader>cc',
      function()
        require('CopilotChat').toggle()
      end,
      desc = 'Toggle Copilot Chat',
    },
    {
      '<leader>cq',
      function()
        require('CopilotChat').ask 'Explain this code'
      end,
      mode = { 'n', 'v' },
      desc = 'Ask Copilot to explain',
    },
  },
}
