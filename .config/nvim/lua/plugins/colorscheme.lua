return {
	{
		"ellisonleao/gruvbox.nvim",
		priority = 1000,
		opts = {
			overrides = {
				CursorLineNr = { bg = "#282828" },
				SignColumn = { bg = "#282828" },
				GruvboxAquaSign = { bg = "#282828" },
				GruvboxBlueSign = { bg = "#282828" },
				GruvboxGreenSign = { bg = "#282828" },
				GruvboxOrangeSign = { bg = "#282828" },
				GruvboxPurpleSign = { bg = "#282828" },
				GruvboxRedSign = { bg = "#282828" },
				GruvboxYellowSign = { bg = "#282828" },
			},
		},
		config = function(_, opts)
			require("gruvbox").setup(opts)
			vim.cmd("colorscheme gruvbox")
		end,
	},
}
