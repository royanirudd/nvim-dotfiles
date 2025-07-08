return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	main = "nvim-treesitter.configs",
	dependencies = {
		"nvim-treesitter/nvim-treesitter-textobjects",
	},
	opts = {
		ensure_installed = {
			"bash",
			"c",
			"diff",
			"html",
			"lua",
			"luadoc",
			"markdown",
			"markdown_inline",
			"query",
			"vim",
			"vimdoc",
		},
		auto_install = true,
		highlight = {
			enable = true,
			additional_vim_regex_highlighting = { "ruby" },
		},
		indent = {
			enable = true,
			disable = { "ruby" },
		},
		textobjects = {
			select = {
				enable = true,
				lookahead = true,
				keymaps = {
					["af"] = "@function.outer",
					["if"] = "@function.inner",
					["ac"] = "@class.outer",
					["ic"] = {
						query = "@class.inner",
						desc = "Select inner part of a class region",
					},
					["as"] = {
						query = "@local.scope",
						query_group = "locals",
						desc = "Select language scope",
					},
				},
				selection_modes = {
					["@parameter.outer"] = "v",
					["@function.outer"] = "V",
					["@class.outer"] = "<c-v>",
				},
				include_surrounding_whitespace = true,
			},
			swap = {
				enable = true,
				swap_next = {
					["<leader>a"] = "@parameter.inner",
				},
				swap_previous = {
					["<leader>A"] = "@parameter.inner",
				},
			},
			move = {
				enable = true,
				set_jumps = true,
				goto_next_start = {
					["]m"] = "@function.outer",
					["]]"] = {
						query = "@class.outer",
						desc = "Next class start",
					},
					["]o"] = "@loop.*",
					["]s"] = {
						query = "@local.scope",
						query_group = "locals",
						desc = "Next scope",
					},
					["]z"] = {
						query = "@fold",
						query_group = "folds",
						desc = "Next fold",
					},
				},
				goto_next_end = {
					["]M"] = "@function.outer",
					["]["] = "@class.outer",
				},
				goto_previous_start = {
					["[m"] = "@function.outer",
					["[["] = "@class.outer",
				},
				goto_previous_end = {
					["[M"] = "@function.outer",
					["[]"] = "@class.outer",
				},
				goto_next = {
					["]d"] = "@conditional.outer",
				},
				goto_previous = {
					["[d"] = "@conditional.outer",
				},
			},
			lsp_interop = {
				enable = true,
				border = "none",
				floating_preview_opts = {},
				peek_definition_code = {
					["<leader>df"] = "@function.outer",
					["<leader>dF"] = "@class.outer",
				},
			},
		},
	},
	config = function(_, opts)
		require("nvim-treesitter.configs").setup(opts)

		-- Repeatable movements
		local ts_repeat_move = require("nvim-treesitter.textobjects.repeatable_move")
		local map = vim.keymap.set
		map({ "n", "x", "o" }, ";", ts_repeat_move.repeat_last_move_next)
		map({ "n", "x", "o" }, ",", ts_repeat_move.repeat_last_move_previous)
		map({ "n", "x", "o" }, "f", ts_repeat_move.builtin_f_expr, { expr = true })
		map({ "n", "x", "o" }, "F", ts_repeat_move.builtin_F_expr, { expr = true })
		map({ "n", "x", "o" }, "t", ts_repeat_move.builtin_t_expr, { expr = true })
		map({ "n", "x", "o" }, "T", ts_repeat_move.builtin_T_expr, { expr = true })
	end,
}
