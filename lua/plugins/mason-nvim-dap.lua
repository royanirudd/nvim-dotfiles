return {
	"jay-babu/mason-nvim-dap.nvim",
	event = "VeryLazy",
	dependencies = {
		"williamboman/mason.nvim",
		"mfussenegger/nvim-dap",
	},
	-- This config function is crucial
	config = function()
		local mason_dap = require("mason-nvim-dap")
		mason_dap.setup({
			-- This is the key part. It tells mason-nvim-dap to automatically
			-- set up the adapters that you have installed with mason.nvim.
			automatic_installation = true,

			-- You can also specify which adapters to set up manually.
			-- This is useful if you don't want to set up all installed adapters.
			-- ensure_installed = { "codelldb" },

			-- This handler function will be called for each adapter that is set up.
			-- The default handler is usually sufficient.
			handlers = {},
		})

		-- Manually setting up the C++ adapter as a fallback and example.
		-- The automatic setup above should handle this, but this shows how it works.
		local dap = require("dap")

		-- Adapter configuration for C/C++/Rust using codelldb
		dap.adapters.codelldb = {
			type = "server",
			port = "${port}",
			executable = {
				-- CHANGE THIS to the path where mason installs the adapter
				command = vim.fn.stdpath("data") .. "/mason/bin/codelldb",
				args = { "--port", "${port}" },
			},
		}

		-- Configuration for launching a C++ program
		dap.configurations.cpp = {
			{
				name = "Launch file",
				type = "codelldb",
				request = "launch",
				program = function()
					return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
				end,
				cwd = "${workspaceFolder}",
				stopOnEntry = false,
			},
		}

		-- Make it work for C as well
		dap.configurations.c = dap.configurations.cpp
	end,
}
