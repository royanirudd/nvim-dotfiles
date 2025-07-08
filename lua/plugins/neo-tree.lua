return {
	"nvim-neo-tree/neo-tree.nvim",
	version = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
		"MunifTanjim/nui.nvim",
	},
	keys = {
		{
			"-", -- Toggle NeoTree
			function()
				require("neo-tree.command").execute({ toggle = true, reveal = true })
			end,
			desc = "NeoTree toggle",
		},
	},
	opts = {
		close_if_last_window = true,
		popup_border_style = "rounded",
		enable_git_status = true,
		enable_diagnostics = true,
		sort_case_insensitive = false,

		default_component_configs = {
			indent = {
				with_markers = true,
				indent_size = 2,
				padding = 1,
				expander_collapsed = "├",
				expander_expanded = "┤",
				expander_highlight = "NeoTreeExpander",
				last_indent_marker = "└",
				start_indent_marker = "│",
				mid_indent_marker = "├",
				last_expander_marker = "└",
				start_expander_marker = "│",
				mid_expander_marker = "├",
				none_expander_marker = " ",
			},
			icon = {
				folder_closed = "📁",
				folder_open = "📂",
				folder_empty = "EmptyEntries",
				default = "*",
			},
			modified = {
				symbol = "📝",
				highlight = "NeoTreeModified",
			},
		},

		window = {
			position = "right",
			width = 40,
			mappings = {
				["<space>"] = "none",
			},
		},

		filesystem = {
			follow_current_file = {
				enabled = true,
				leave_dirs_open = false,
			},
			group_empty_dirs = false,
			hijack_netrw_behavior = "open_default",
			use_libuv_file_watcher = false,

			filtered_items = {
				visible = true,
				hide_dotfiles = false,
				hide_gitignored = false,
				hide_hidden = true,
				never_show = { ".DS_Store", "thumbs.db" },
			},

			window = {
				mappings = {
					["<bs>"] = "navigate_up",
					["."] = "set_root",
					["H"] = "toggle_hidden",
					["-"] = "close_window",
				},
			},
		},

		buffers = {
			follow_current_file = {
				enabled = true,
				leave_dirs_open = false,
			},
			group_empty_dirs = true,
			show_unloaded = true,
			window = {
				mappings = {
					["d"] = "buffer_delete",
					["bd"] = "buffer_delete",
					["<bs>"] = "navigate_up",
					["."] = "set_root",
					["-"] = "close_window",
				},
			},
		},
	},
}
