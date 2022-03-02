vim.api.nvim_set_keymap("n", "<C-n>", ":NvimTreeToggle<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>r", ":NvimTreeRefresh<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>c", ":NvimTreeFindFile<CR>", { noremap = true, silent = true })

-- delete buffers without losing window layout
-- https://www.reddit.com/r/neovim/comments/nyqtwz/how_to_stop_nvim_tree_to_focus_when_a_buffer_is/
vim.api.nvim_set_keymap("n", "<leader>x", ":bp<bar>sp<bar>bn<bar>bd<CR>", { noremap = true, silent = true })

require("nvim-tree").setup({
  disable_netrw = true,
  hijack_netrw = true,
  open_on_setup = false,
  ignore_ft_on_setup = {},
  auto_close = false,
  open_on_tab = false,
  hijack_cursor = false,
  update_cwd = false,
  update_to_buf_dir = {
    enable = true,
    auto_open = true,
  },
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
    update_cwd = false,
    ignore_list = {},
  },
  system_open = {
    cmd = nil,
    args = {},
  },
  filters = {
    dotfiles = false,
    custom = {},
  },
  view = {
    width = 65,
    height = 65,
    hide_root_folder = false,
    side = "right",
    auto_resize = false,
    mappings = {
      custom_only = false,
      list = {},
    },
  },
})
