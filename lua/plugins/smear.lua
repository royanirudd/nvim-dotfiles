return {
	"sphamba/smear-cursor.nvim",

	opts = {
		-- Smear cursor when switching buffers or windows.
		smear_between_buffers = true,

		-- Smear cursor when moving within line or to neighbor lines.
		-- Use `min_horizontal_distance_smear` and `min_vertical_distance_smear` for finer control
		smear_between_neighbor_lines = true,

		scroll_buffer_space = true,

		legacy_computing_symbols_support = false,

		smear_insert_mode = true,
	},
}
