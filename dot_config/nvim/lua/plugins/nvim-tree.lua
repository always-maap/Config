return {
  "nvim-tree/nvim-tree.lua",
  dependencies = { "nvim-tree/nvim-web-devicons" },

  keys = {
    { "<leader>b", "<cmd>NvimTreeToggle<CR>",   desc = "Toggle NvimTree" },
    { "<leader>r", "<cmd>NvimTreeRefresh<CR>",  desc = "Refresh NvimTree" },
    { "<leader>c", "<cmd>NvimTreeFindFile<CR>", desc = "Find file in NvimTree" },

    -- delete buffer without losing window layout
    { "<leader>x", ":bp<bar>sp<bar>bn<bar>bd<CR>", desc = "Smart buffer delete" },
  },

  config = function()
    require("nvim-tree").setup({
      disable_netrw = true,
      hijack_netrw = true,

      -- (deprecated options removed)

      diagnostics = {
        enable = false,
        icons = {
          hint = "",
          info = "",
          warning = "",
          error = "",
        },
      },

      update_focused_file = {
        enable = false,
        update_root = false,
        ignore_list = {},
      },

      filters = {
        dotfiles = false,
        custom = {},
      },

      view = {
        width = 65,
        side = "right",
        preserve_window_proportions = true,
      },
    })
  end,
}

