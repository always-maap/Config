return {
	{
		"neovim/nvim-lspconfig",
    dependencies = {
      {
        "folke/lazydev.nvim",
        ft = "lua",
      },
    },
		lazy = false,
		config = function()
			local capabilities = vim.lsp.protocol.make_client_capabilities()
			capabilities = vim.tbl_deep_extend("force", capabilities, require("cmp_nvim_lsp").default_capabilities())

			vim.api.nvim_create_autocmd({ "BufWritePre" }, { pattern = { "*.templ" }, callback = vim.lsp.buf.format })

			local on_attach = function(_client, _bufnr)
				-- other configuration options
			end

      local servers = {
        lua_ls = {
          settings = {
            Lua = {
              diagnostics = {
                globals = { "vim" },
                disable = { "different-requires" },
              },
            },
          },
        },

        rust_analyzer = {},

        gopls = {
          filetypes = { "go", "gomod", "gowork", "gotmpl" },
          settings = {
            env = {
              GOEXPERIMENT = "rangefunc",
            },
            formatting = {
              gofumpt = true,
            },
          },
        },

        tailwindcss = {
          filetypes = { "templ", "astro", "javascript", "typescript", "react" },
          settings = {
            tailwindCSS = {
              includeLanguages = {
                templ = "html",
              },
            },
          },
        },

        ts_ls = {},

        html = {
          filetypes = { "html", "templ" },
        },

        clangd = {},
      }

      -- Apply global defaults to ALL LSP servers
      vim.lsp.config["*"] = {
        capabilities = capabilities,
        on_attach = on_attach,
      }

      -- Configure and enable each LSP server
      for name, cfg in pairs(servers) do
        vim.lsp.config[name] = cfg
        vim.lsp.enable(name)
      end
		end,
	},
}
