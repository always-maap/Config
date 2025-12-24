return {
  {
    "hrsh7th/nvim-cmp",
    event = "InsertEnter",
    dependencies = {
      -- 
      "L3MON4D3/LuaSnip",

      -- 
      "saadparwaiz1/cmp_luasnip",

      -- autopairing of (){}[] etc
      {
        "windwp/nvim-autopairs",
        opts = {
          fast_wrap = {},
          disable_filetype = { "TelescopePrompt", "vim" },
        },
        config = function(_, opts)
          require("nvim-autopairs").setup(opts)

          -- setup cmp for autopairs
          local cmp_autopairs = require "nvim-autopairs.completion.cmp"
          require("cmp").event:on("confirm_done", cmp_autopairs.on_confirm_done())
        end,
      },

      -- source for neovim's Lua runtime API
      "hrsh7th/cmp-nvim-lua",

      -- source for neovim's built-in language server client
      "hrsh7th/cmp-nvim-lsp",

      -- source for buffer words
      "hrsh7th/cmp-buffer",

      -- source for filesystem paths
      "hrsh7th/cmp-path",
    },
    opts = function()
      return require("plugins.configs.cmp")
    end,
    config = function(_, opts)
      require("cmp").setup(opts)
    end,
  },
}
