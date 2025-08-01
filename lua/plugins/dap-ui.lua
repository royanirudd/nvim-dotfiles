return {
	"rcarriga/nvim-dap-ui",
	event = "VeryLazy", -- You can keep this, but for debugging, loading on a dap event is safer.
	dependencies = {
		"mfussenegger/nvim-dap",
		"nvim-neotest/nvim-nio",
	},
	config = function()
		local dap, dapui = require("dap"), require("dapui")

		-- 1. Call dapui.setup() to configure the UI
		-- This is the main fix for your error.
		dapui.setup({
			-- You can customize the layout here. The default is usually fine.
			-- For example, to put the scopes and breakpoints on the right:
			layouts = {
				{
					elements = {
						"scopes",
						"breakpoints",
						"stacks",
						"watches",
					},
					size = 0.25,
					position = "right",
				},
				{
					elements = {
						"repl",
						"console",
					},
					size = 0.25,
					position = "bottom",
				},
			},
			-- Other options you might want to configure:
			floating = {
				max_height = nil, -- Use plenary popup scrolling
				max_width = nil, -- Use plenary popup scrolling
				border = "rounded",
			},
			controls = {
				enabled = true,
				-- Set icons for the controls
				icons = {
					pause = "⏸",
					play = "▶",
					step_into = "⏎",
					step_over = "⏭",
					step_out = "⏮",
					step_back = "b",
					run_last = "▶▶",
					terminate = "⏹",
				},
			},
		})

		-- 2. Define breakpoint signs
		vim.fn.sign_define("DapBreakpoint", { text = "🔴", texthl = "Error", linehl = "", numhl = "" })
		vim.fn.sign_define(
			"DapStopped",
			{ text = "▶️", texthl = "DiagnosticInfo", linehl = "DiagnosticInfo", numhl = "" }
		)

		-- 3. Add your listeners AFTER the setup call
		dap.listeners.after.event_initialized["dapui_config"] = function()
			dapui.open()
		end
		dap.listeners.before.event_terminated["dapui_config"] = function()
			dapui.close()
		end
		dap.listeners.before.event_exited["dapui_config"] = function()
			dapui.close()
		end

		-- 4. Set your keymaps here for a complete setup
		vim.keymap.set("n", "<leader>db", dap.toggle_breakpoint, { desc = "[D]ebugger: Toggle [B]reakpoint" })
		vim.keymap.set("n", "<leader>dr", dap.continue, { desc = "[D]ebugger: [R]un/Continue" })
		vim.keymap.set("n", "<leader>do", dap.step_over, { desc = "[D]ebugger: Step [O]ver" })
		vim.keymap.set("n", "<leader>di", dap.step_into, { desc = "[D]ebugger: Step [I]nto" })
		vim.keymap.set("n", "<leader>du", dap.step_out, { desc = "[D]ebugger: Step O[u]t" })
		vim.keymap.set("n", "<leader>dc", dap.run_to_cursor, { desc = "[D]ebugger: Run to [C]ursor" })
		vim.keymap.set("n", "<leader>dx", dap.terminate, { desc = "[D]ebugger: Terminate [X]" })
		vim.keymap.set("n", "<leader>d?", function()
			require("dapui").eval()
		end, { desc = "[D]ebugger: Eval" })
	end,
}
