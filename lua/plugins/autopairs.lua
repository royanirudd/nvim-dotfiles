return {
	"windwp/nvim-autopairs",
	event = "InsertEnter",
	dependencies = { "hrsh7th/nvim-cmp" },
	config = function()
		local npairs = require("nvim-autopairs")
		npairs.setup({
			enabled = function(bufnr)
				return true
			end,
			disable_filetype = {
				"TelescopePrompt",
				"vim",
			},
			disable_in_macro = true,
			disable_in_visualblock = false,
			disable_in_replace_mode = true,
			ignored_next_char = [=[[%w%%%'%[%"%.%`%$]]=],
			enable_moveright = true,
			enable_afterquote = true,
			enable_check_bracket_line = true,
			enable_bracket_in_quote = true,
			enable_abbr = false,
			break_undo = true,
			check_ts = false,
			map_cr = true,
			map_bs = true,
			map_c_h = false,
			map_c_w = false,
		})

		-- If you want to automatically add `(` after selecting a function or method
		local cmp_autopairs = require("nvim-autopairs.completion.cmp")
		local cmp = require("cmp")
		cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())
	end,
}
