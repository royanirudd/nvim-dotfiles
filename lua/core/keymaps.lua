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

-- DAP key mappings
local opts = { noremap = true, silent = true }
vim.api.nvim_set_keymap("n", "<leader>db", "<cmd>DapToggleBreakpoint<CR>", opts)
vim.api.nvim_set_keymap("n", "<leader>dr", "<cmd>DapContinue<CR>", opts)

-- Terminal keybinds
vim.api.nvim_set_keymap("n", "<C-\\>", ":vsplit | terminal<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("i", "<C-\\>", "<C-o>:vsplit | terminal<CR>", { noremap = true, silent = true })

-- vim-latex pdflatex
vim.api.nvim_set_keymap(
	"n",
	"<leader>ll",
	":!pdflatex -interaction=nonstopmode %<CR>",
	{ noremap = true, silent = false }
)

-- Noice
vim.keymap.set("n", "<leader>Z", "<cmd>NoiceDismiss<CR>", { desc = "Dismiss Noice Message" })

-- Clipboard History
vim.keymap.set("n", "<leader>ch", ":ClipboardHistory<CR>", { desc = "[C]lipboard [H]istory" })
vim.keymap.set("n", "<leader>cc", ":ClipboardClear<CR>", { desc = "[C]lipboard [C]lear" })

-- Tabs
vim.keymap.set("n", "<C-t>", ":tabnew<CR>", { desc = "new [T]ab" })

vim.keymap.set("n", "<leader>ut", require("config.theme").toggle_theme, { desc = "[U]I: Toggle [T]heme" })
