return {
	"OXY2DEV/markview.nvim",
	lazy = false,
	priority = 49,

	opts = {
		preview = {
			filetypes = { "markdown", "telekasten" },

			modes = { "n", "c", "t" },
		},
	},

	-- A simple config function to apply the options.
	config = function(_, opts)
		require("markview").setup(opts)
	end,
}
