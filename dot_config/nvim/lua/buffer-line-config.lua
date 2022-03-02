require("bufferline").setup({})

vim.api.nvim_set_keymap("n", "<leader>1", "<Cmd>BufferLineGoToBuffer 1<CR>", {
  noremap = true,
  silent = true,
})
vim.api.nvim_set_keymap("n", "<leader>2", "<Cmd>BufferLineGoToBuffer 2<CR>", {
  noremap = true,
  silent = true,
})
vim.api.nvim_set_keymap("n", "<leader>3", "<Cmd>BufferLineGoToBuffer 3<CR>", {
  noremap = true,
  silent = true,
})
vim.api.nvim_set_keymap("n", "<leader>4", "<Cmd>BufferLineGoToBuffer 4<CR>", {
  noremap = true,
  silent = true,
})
vim.api.nvim_set_keymap("n", "<leader>5", "<Cmd>BufferLineGoToBuffer 5<CR>", {
  noremap = true,
  silent = true,
})
vim.api.nvim_set_keymap("n", "<leader>6", "<Cmd>BufferLineGoToBuffer 6<CR>", {
  noremap = true,
  silent = true,
})
vim.api.nvim_set_keymap("n", "<leader>7", "<Cmd>BufferLineGoToBuffer 7<CR>", {
  noremap = true,
  silent = true,
})
vim.api.nvim_set_keymap("n", "<leader>8", "<Cmd>BufferLineGoToBuffer 8<CR>", {
  noremap = true,
  silent = true,
})
vim.api.nvim_set_keymap("n", "<leader>9", "<Cmd>BufferLineGoToBuffer 9<CR>", {
  noremap = true,
  silent = true,
})

-- These commands will navigate through buffers in order regardless of which mode you are using
-- e.g. if you change the order of buffers :bnext and :bprevious will not respect the custom ordering
vim.api.nvim_set_keymap("n", "<leader>n", ":BufferLineCycleNext<CR>", {
  noremap = true,
  silent = true,
})
vim.api.nvim_set_keymap("n", "<leader>p", ":BufferLineCyclePrev<CR>", {
  noremap = true,
  silent = true,
})
