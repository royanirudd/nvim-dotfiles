return {
	-- Point to the new, community-maintained version
	"nvim-telekasten/telekasten.nvim",

	dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },

	-- This 'opts' table is the standard lazy.nvim way to pass options.
	-- It is more reliable than putting the setup call inside the config function.
	---@type telekasten.Config
	opts = {
		-- The crucial option that will now be correctly read
		filetype_ft = "telekasten.markdown",

		-- All your other settings
		home = "/mnt/d/zettelkasten",
		extension = ".md",
		notes = "notes",
		sources = "sources",
		topics = "topics",
		templates = "/mnt/d/zettelkasten/templates",
		image_subdir = "images",
		tag_notation = "#",
		command_palette_theme = "dropdown",
		follow_up_questions_header = "Follow-up Questions",
		source_note_header = "References",
		related_topics_header = "Related Topics",
	},

	-- The config function now becomes extremely simple.
	-- It just calls setup, and lazy.nvim automatically passes the 'opts' table to it.
	config = function(_, opts)
		require("telekasten").setup(opts)
	end,
}
