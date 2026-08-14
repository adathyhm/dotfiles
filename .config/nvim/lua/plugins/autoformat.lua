return {
	"stevearc/conform.nvim",
	event = { "BufWritePre" },
	opts = {
		notify_on_error = false,
		format_on_save = function(bufnr)
			-- You can specify filetypes to autoformat on save here:
			local enabled_filetypes = {
				-- lua = true,
				-- python = true,
			}
			if enabled_filetypes[vim.bo[bufnr].filetype] then
				return { timeout_ms = 500 }
			else
				return nil
			end
		end,
		default_format_opts = {
			lsp_format = "fallback", -- Use external formatters if configured below, otherwise use LSP formatting. Set to `false` to disable LSP formatting entirely.
		},
		-- You can also specify external formatters in here.
		formatters_by_ft = {
			-- rust = { 'rustfmt' },
			python = { "black" },
			lua = { "stylua" },
			html = { "prettierd" },
			javascript = { "prettierd" },
			css = { "prettierd" },
			c = { "clang-format" },
			cpp = { "clang-format" },
			bash = { "shfmt" },
			sh = { "shfmt" },
		},
	},

	vim.keymap.set({ "n", "v" }, "<leader>f", function()
		require("conform").format({ async = true })
	end, { desc = "[F]ormat buffer" }),
}
