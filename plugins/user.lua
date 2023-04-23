return {
  "mfussenegger/nvim-jdtls", -- load jdtls on module
  {
    "bakpakin/janet.vim",
    ft = "janet",
  },
  {
    "jez/vim-better-sml",
    ft = "sml",
    config = function(_, _)
      vim.api.nvim_create_autocmd("FileType", {
        pattern = "sml",
        group = vim.api.nvim_create_augroup("Sml", { clear = true }),
        desc = "sml keybings",
        callback = function(args)
          vim.keymap.set("n", "gT", "<cmd>SMLTypeQuery<cr>", { buffer = args.buf, silent = true })
          vim.keymap.set("n", "gd", "<cmd>SMLJumpToDef<cr>", { buffer = args.buf, silent = true })
          vim.keymap.set("n", "<leader>is", "<cmd>SMLReplStart<cr>", { buffer = args.buf, silent = true })
          vim.keymap.set("n", "<leader>ik", "<cmd>SMLReplStop<cr>", { buffer = args.buf, silent = true })
          vim.keymap.set("n", "<leader>ib", "<cmd>SMLReplBuild<cr>", { buffer = args.buf, silent = true })
          vim.keymap.set("n", "<leader>io", "<cmd>SMLReplOpen<cr>", { buffer = args.buf, silent = true })
          vim.keymap.set("n", "<leader>iu", "<cmd>SMLReplUse<cr>", { buffer = args.buf, silent = true })
          vim.keymap.set("n", "<leader>ic", "<cmd>SMLReplClear<cr>", { buffer = args.buf, silent = true })
          vim.keymap.set("n", "<leader>ip", "<cmd>SMLReplPrintDepth<cr>", { buffer = args.buf, silent = true })
          vim.wo.conceallevel = 2
        end,
      })
    end,
  },
  {
    "Olical/conjure",
    dependencies = { "nvim-treesitter" },
    ft = { "python", "julia", "lua", "janet" },
  },
  {
    "keaising/im-select.nvim",
    opts = {
      default_im_select = "keyboard-us",
      disable_auto_restore = 0,
      default_command = "fcitx5-remote",
    },
    config = true,
    event = { "User AstroFile" },
  },
}
