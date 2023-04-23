return {
  "nvim-treesitter/nvim-treesitter",
  dependencies = { "nvim-treesitter/nvim-treesitter-textobjects" },
  opts = {
    ensure_installed = { "c", "cpp", "go", "rust", "ocaml", "python", "julia", "lua" },
    auto_install = true,
    incremental_selection = { enable = false },
    textobjects = {
      select = {
        enable = true,
        lookahead = true,
        keymaps = {
          ["af"] = { query = "@function.outer", desc = "Select outer part of a function region" },
          ["if"] = { query = "@function.inner", desc = "Select inner part of a function region" },
          ["ac"] = { query = "@class.outer", desc = "Select outer part of a class region" },
          ["ic"] = { query = "@class.inner", desc = "Select inner part of a class region" },
        },
        include_surrounding_whitespace = false,
      },
      move = {
        enable = true,
        set_jumps = true, -- whether to set jumps in the jumplist
        goto_next_start = {
          ["]m"] = { query = "@function.outer", desc = "Next function start" },
          ["]c"] = { query = "@class.outer", desc = "Next class start" },
          ["]s"] = { query = "@scope", query_group = "locals", desc = "Next scope" },
          ["]z"] = { query = "@fold", query_group = "folds", desc = "Next fold" },
        },
        goto_previous_start = {
          ["[m"] = { query = "@function.outer", desc = "Next function start" },
          ["[c"] = { query = "@class.outer", desc = "Next class start" },
          ["[s"] = { query = "@scope", query_group = "locals", desc = "Next scope" },
          ["[z"] = { query = "@fold", query_group = "folds", desc = "Next fold" },
        },
      },
    },
  },
}
