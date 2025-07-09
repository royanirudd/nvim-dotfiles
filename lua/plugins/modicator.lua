return {
	"mawkler/modicator.nvim",
	-- dependencies = "ribru17/bamboo.nvim", -- Add your colorscheme plugin here
	init = function()
		vim.o.cursorline = true
		vim.o.number = true
		vim.o.termguicolors = true
	end,
	opts = {
		-- Warn if any required option above is missing. May emit false positives
		-- if some other plugin modifies them, which in that case you can just
		-- ignore. Feel free to remove this line after you've gotten Modicator to
		-- work properly.
		show_warnings = true,
	},
}
-- return {
-- 	"mawkler/modicator.nvim",
-- 	event = "ColorScheme", -- Auto-applies after theme change
-- 	config = function()
-- 		vim.o.cursorline = true
-- 		vim.o.number = true
-- 		vim.o.termguicolors = true
-- 		require("modicator").setup()
-- 	end,
-- }
