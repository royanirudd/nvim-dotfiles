-- Clear highlights on search
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Diagnostic keymaps
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })

-- Exit terminal mode
vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })

-- Disable arrow keys in normal mode
vim.keymap.set("n", "<left>", '<cmd>echo "Use h to move!!"<CR>')
vim.keymap.set("n", "<right>", '<cmd>echo "Use l to move!!"<CR>')
vim.keymap.set("n", "<up>", '<cmd>echo "Use k to move!!"<CR>')
vim.keymap.set("n", "<down>", '<cmd>echo "Use j to move!!"<CR>')

-- Window navigation
vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

-- Terminal keybinds
vim.api.nvim_set_keymap("n", "<C-\\>", ":hsplit | terminal<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("i", "<C-\\>", "<C-o>:hsplit | terminal<CR>", { noremap = true, silent = true })

-- Debugger keybinds
-- Refer to lua/plugins/dap-ui.lua for keymaps

-- Noice
-- vim.keymap.set("n", "<leader>Z", "<cmd>NoiceDismiss<CR>", { desc = "Dismiss Noice Message" })

-- Clipboard History
vim.keymap.set("n", "<leader>ch", ":ClipboardHistory<CR>", { desc = "[C]lipboard [H]istory" })
vim.keymap.set("n", "<leader>cc", ":ClipboardClear<CR>", { desc = "[C]lipboard [C]lear" })

-- Telekasten keymaps
vim.keymap.set(
	"n",
	"<leader>zn",
	":Telekasten new_templated_note<CR>",
	{ noremap = true, silent = true, desc = "Zettel: New note from template" }
)
vim.keymap.set(
	"n",
	"<leader>zl",
	"<cmd>Telekasten insert_link<CR>",
	{ noremap = true, silent = true, desc = "Zettel: Insert link" }
)
vim.keymap.set(
	"n",
	"<leader>zf",
	"<cmd>Telekasten follow_link<CR>",
	{ noremap = true, silent = true, desc = "Zettel: Follow link under cursor" }
)
vim.keymap.set(
	"n",
	"<leader>zo",
	"<cmd>Telekasten find_notes<CR>",
	{ noremap = true, silent = true, desc = "Zettel: Open note by title" }
)

-- Search note content (grep). 'g' for 'grep'.
vim.keymap.set(
	"n",
	"<leader>zg",
	"<cmd>Telekasten search_notes<CR>",
	{ noremap = true, silent = true, desc = "Zettel: Grep/Search in all notes" }
)

-- Show all tags and find notes by tag. 't' for 'tags'.
vim.keymap.set(
	"n",
	"<leader>zt",
	"<cmd>Telekasten show_tags<CR>",
	{ noremap = true, silent = true, desc = "Zettel: Find notes by tag" }
)

-- Show backlinks for the current note. 'b' for 'backlinks'.
vim.keymap.set(
	"n",
	"<leader>zb",
	"<cmd>Telekasten show_backlinks<CR>",
	{ noremap = true, silent = true, desc = "Zettel: Show backlinks" }
)

-- Tabs
vim.keymap.set("n", "<C-t>", ":tabnew<CR>", { desc = "new [T]ab" })

-- USEFUL CUSTOMS
vim.keymap.set("n", "Y", "y$", { desc = "Tank to end of line " })
vim.keymap.set("n", "<leader>w", ":w<CR>", { desc = "Save current file" })
vim.keymap.set("n", "<leader>d", "dd", { desc = "Delete current line" })
-- Move line up and down
vim.keymap.set("n", "<C-j>", ":m .+1<CR>==", { desc = "Move line down" })
vim.keymap.set("n", "<C-k>", ":m .-2<CR>==", { desc = "Move line up" })
vim.keymap.set("v", "<C-j>", ":m  '>+1<CR>gv=gv", { desc = "Move selection down" })
vim.keymap.set("v", "<C-k>", ":m  '<-2<CR>gv=gv", { desc = "Move selection down" })
--Better indentation
vim.keymap.set("v", "<", "<gv", { desc = "Indent left and reselect" })
vim.keymap.set("v", ">", ">gv", { desc = "Indent right and reselect" })
--Keep serach itterating words to center
vim.keymap.set("n", "N", "nzzzv", { desc = "Center next search" })
-- Some undoing improvements with feedback
vim.keymap.set("n", "u", "u<CR>:echo 'Undoing...'<CR>", { desc = "Undo with feedback" })
vim.keymap.set("n", "<C-r>", "<C-r><CR>:echo 'Redoing...'<CR>", { desc = "Redo with feedback" })
