return {
  {"nvim-treesitter/nvim-treesitter",
    branch = 'master',
    lazy = false,
    build = ":TSUpdate",
    config = function()
      local config = require("nvim-treesitter.configs")
      config.setup({
        ensure_installed = {"lua", "javascript", "ruby"},
        auto_install = true,
        highlight = { enable = true },
        index = { enable = false },
      })
    end
  },
  {
    "kchmck/vim-coffee-script",
  }
}

