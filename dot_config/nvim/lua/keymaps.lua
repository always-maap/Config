vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(ev)
    local buf = ev.buf
    local client = vim.lsp.get_client_by_id(ev.data.client_id)

    local opts = { buffer = buf }

    vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, opts)
    vim.keymap.set("n", "<leader>gD", vim.lsp.buf.declaration, opts)
    vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, opts)
    vim.keymap.set("n", "<leader>gi", vim.lsp.buf.implementation, opts)
    vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)

    vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
    vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)
    vim.keymap.set("n", "<leader>f", function()
      vim.lsp.buf.format({ async = true })
    end, opts)
  end,
})
