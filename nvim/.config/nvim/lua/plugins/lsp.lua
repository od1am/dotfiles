return {
	{
		"neovim/nvim-lspconfig",
		config = function()
			require("lspconfig").lua_ls.setup({})
			require("lspconfig").ts_ls.setup({})
			require("lspconfig").zls.setup({})
			require("lspconfig").biome.setup({})
		end,
	},
}
