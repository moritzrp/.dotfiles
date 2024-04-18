return {
	{
		"williamboman/mason.nvim", -- mason is used to install lsps, formatters etc.
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim", -- allows us to make sure certain lsps are preinstalled
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"angularls",
					"ansiblels",
					"bashls",
					"cssls",
					"html",
					"jsonls",
					"lua_ls",
					"marksman",
					"pyright",
					"tsserver",
				},
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()
			local lspconfig = require("lspconfig")

			lspconfig.angularls.setup({})
			lspconfig.ansiblels.setup({})
			lspconfig.bashls.setup({})
			lspconfig.cssls.setup({})
			lspconfig.html.setup({})
			lspconfig.jsonls.setup({})
			lspconfig.lua_ls.setup({
				capabilities = capabilities,
			})
			lspconfig.marksman.setup({})
			lspconfig.pyright.setup({})
            -- lspconfig.tsserver.setup({})
            lspconfig["tsserver"].setup({})

			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
			vim.keymap.set({ "n", "v" }, "<space>ca", vim.lsp.buf.code_action, {})
		end,
	},
}
