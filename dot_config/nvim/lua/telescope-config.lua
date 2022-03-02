-- Telescope leader mapping
vim.api.nvim_set_keymap("n", "<leader>ff", "<Cmd>Telescope git_files<CR>", {
  noremap = true,
  silent = true,
})

vim.api.nvim_set_keymap("n", "<leader>fg", "<Cmd>Telescope live_grep<CR>", {
  noremap = true,
  silent = true,
})

vim.api.nvim_set_keymap("n", "<leader>fb", "<Cmd>Telescope buffers<CR>", {
  noremap = true,
  silent = true,
})

vim.api.nvim_set_keymap("n", "<leader>fh", "<Cmd>Telescope help_tags<CR>", {
  noremap = true,
  silent = true,
})
