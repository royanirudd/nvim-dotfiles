return {
	"royanirudd/clipboard-history.nvim",
	event = "VeryLazy",
	config = function()
		require("clipboard-history").setup({
			-- Default configuration
			-- You can customize this as needed
		})

		-- Keymaps for Clipboard History
		vim.keymap.set("n", "<leader>ch", ":ClipboardHistory<CR>", { desc = "[C]lipboard [H]istory" })
		vim.keymap.set("n", "<leader>cc", ":ClipboardClear<CR>", { desc = "[C]lipboard [C]lear" })
	end,
}
