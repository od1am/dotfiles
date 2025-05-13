return {
	{
		"stevearc/oil.nvim",
		---@module 'oil'
		---@type oil.SetupOpts
		opts = {},
		dependencies = { "nvim-tree/nvim-web-devicons" },
		lazy = false,
		config = function()
			require("oil").setup({
				columns = {
					"icon",
				},
				view_options = {
					show_hidden = true,
				},
			})
		end,
	},
}
