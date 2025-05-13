return {
	{
		"giuxtaposition/blink-cmp-copilot",
		after = { "copilot.lua" },
	},
	{
		"zbirenbaum/copilot.lua",
		cmd = "Copilot",
		event = "InsertEnter",
		opts = {
			panel = { enabled = false },
			-- Disable to use in cmp
			suggestion = { enabled = false },
		},
		config = function(_, opts)
			require("copilot").setup(opts)
		end,
	},
}
