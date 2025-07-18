return {
	"nvim-lualine/lualine.nvim",
	event = "VeryLazy",
	-- dependencies = { "nvim-tree/nvim-web-devicons", enabled = vim.g.have_nerd_font },
	config = function()
		require("lualine").setup({
			options = {
				theme = "auto",
				section_separators = "", -- Customize as needed
				component_separators = "", -- Customize as needed
			},
			sections = {
				lualine_a = { "mode" }, -- Show current mode
				lualine_b = { "branch", "diff" },
				lualine_c = { "filename" },
				lualine_x = { "encoding", "fileformat", "filetype" },
				lualine_y = { "location" },
				lualine_z = { "progress" },
			},
		})
	end,
}
