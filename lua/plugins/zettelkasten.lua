return {
	"nvim-telekasten/telekasten.nvim",

	dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },

	lazy = true,
	---@type telekasten.Config
	opts = {
		filetype_ft = "telekasten.markdown",

		extras = {
			"graph",
		},

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
}
