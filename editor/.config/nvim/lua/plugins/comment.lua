return {
	{
		"numToStr/Comment.nvim",
		lazy = false, -- Load immediately
		config = function()
			require("Comment").setup()

			-- Set commentstring for Slim files
			vim.api.nvim_create_autocmd("FileType", {
				pattern = "slim",
				callback = function()
					vim.bo.commentstring = "/ %s"
				end,
			})

			-- Custom keybindings
			vim.keymap.set("n", "<leader>/", function()
				require("Comment.api").toggle.linewise.current()
			end, { desc = "Toggle comment" })
			vim.keymap.set("v", "<leader>/", function()
				local esc = vim.api.nvim_replace_termcodes("<esc>", true, false, true)
				vim.api.nvim_feedkeys(esc, "nx", false)
				require("Comment.api").toggle.linewise(vim.fn.visualmode())
			end, { desc = "Toggle comment" })
		end,
	},
}
