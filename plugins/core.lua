return {
  -- You can disable default plugins as follows:
  { "max397574/better-escape.nvim", enabled = true },
  {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = { "User AstroFile", "InsertEnter" },
    config = true,
  },
  -- By adding to the which-key config and using our helper function you can add more which-key registered bindings
  -- {
  --   "folke/which-key.nvim",
  --   config = function(plugin, opts)
  --     require "plugins.configs.which-key"(plugin, opts) -- include the default astronvim config that calls the setup call
  --     -- Add bindings which show up as group name
  --     local wk = require "which-key"
  --     wk.register({
  --       b = { name = "Buffer" },
  --     }, { mode = "n", prefix = "<leader>" })
  --   end,
  -- },
}
