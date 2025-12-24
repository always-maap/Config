return {
  "akinsho/bufferline.nvim",
  version = "*",
  lazy = false,
  dependencies = { "nvim-tree/nvim-web-devicons" },

  config = function()
    require("bufferline").setup({})
  end,

  keys = {
    -- Jump to specific buffers
    { "<leader>1", "<Cmd>BufferLineGoToBuffer 1<CR>", desc = "Go to buffer 1" },
    { "<leader>2", "<Cmd>BufferLineGoToBuffer 2<CR>", desc = "Go to buffer 2" },
    { "<leader>3", "<Cmd>BufferLineGoToBuffer 3<CR>", desc = "Go to buffer 3" },
    { "<leader>4", "<Cmd>BufferLineGoToBuffer 4<CR>", desc = "Go to buffer 4" },
    { "<leader>5", "<Cmd>BufferLineGoToBuffer 5<CR>", desc = "Go to buffer 5" },
    { "<leader>6", "<Cmd>BufferLineGoToBuffer 6<CR>", desc = "Go to buffer 6" },
    { "<leader>7", "<Cmd>BufferLineGoToBuffer 7<CR>", desc = "Go to buffer 7" },
    { "<leader>8", "<Cmd>BufferLineGoToBuffer 8<CR>", desc = "Go to buffer 8" },
    { "<leader>9", "<Cmd>BufferLineGoToBuffer 9<CR>", desc = "Go to buffer 9" },

    -- Cycle buffers
    { "<leader>n", "<Cmd>BufferLineCycleNext<CR>", desc = "Next buffer" },
    { "<leader>p", "<Cmd>BufferLineCyclePrev<CR>", desc = "Previous buffer" },

    -- Move between split windows
    { "<leader>h", "<C-w>h", desc = "Move left" },
    { "<leader>j", "<C-w>j", desc = "Move down" },
    { "<leader>k", "<C-w>k", desc = "Move up" },
    { "<leader>l", "<C-w>l", desc = "Move right" },
  },
}
