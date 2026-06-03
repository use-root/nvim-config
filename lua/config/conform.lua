local M = {}

function M.setup()
	require("conform").setup({
		formatters_by_ft = {
			-- Frontend
			javascript = { "prettier" },
			typescript = { "prettier" },
			javascriptreact = { "prettier" },
			typescriptreact = { "prettier" },
			html = { "prettier" },
			css = { "prettier" },
			json = { "prettier" },
			jsonc = { "prettier" },

			-- Backend
			python = { "black" },
			lua = { "stylua" },

			-- Java
			java = { "google-java-format" },

			-- C / C++
			c = { "clang_format" },
			cpp = { "clang_format" },
		},

		format_on_save = {
			timeout_ms = 2000,
			lsp_fallback = true,
		},
	})

	vim.keymap.set("n", "<leader>f", function()
		require("conform").format()
	end, { desc = "Format file" })
end

return M
