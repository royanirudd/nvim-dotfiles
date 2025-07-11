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
vim.api.nvim_set_keymap("n", "<C-\\>", ":vsplit | terminal<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("i", "<C-\\>", "<C-o>:vsplit | terminal<CR>", { noremap = true, silent = true })

-- Noice
-- vim.keymap.set("n", "<leader>Z", "<cmd>NoiceDismiss<CR>", { desc = "Dismiss Noice Message" })

-- Clipboard History
vim.keymap.set("n", "<leader>ch", ":ClipboardHistory<CR>", { desc = "[C]lipboard [H]istory" })
vim.keymap.set("n", "<leader>cc", ":ClipboardClear<CR>", { desc = "[C]lipboard [C]lear" })

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
