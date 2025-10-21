return {
	{
		"mason-org/mason.nvim",
		opts = {},
		config = function()
			require("mason").setup()
		end,
	},
	{
		"mason-org/mason-lspconfig.nvim",
		lazy = false,
		opts = {
			auto_install = true,
		},
	},
	{
		"neovim/nvim-lspconfig",
		config = function()

      -- LSP Server Configs
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			vim.lsp.config("lua_ls", {
				capabilities = capabilities,
			})

			vim.lsp.config("eslint", {
				capabilities = capabilities,
			})

			--vim.lsp.config("rubocop", {
				--capabilities = capabilities,
			--})

			vim.lsp.config("HTML", {
				capabilities = capabilities,
			})

      --vim.lsp.config("coffeesense", {
        --capabilities = capabilities,
        --filetypes = { "coffee" },
      --})

      -- enable lsp servers
			vim.lsp.enable("lua_ls")
			vim.lsp.enable("eslint")
			--vim.lsp.enable("rubocop")
			vim.lsp.enable("html")
      --vim.lsp.enable("coffeesense")

      -- Keymaps
      vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
      vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
      vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
      vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
		end,
	},
}
