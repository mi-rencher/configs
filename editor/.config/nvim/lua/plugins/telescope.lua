return {
	{
		"nvim-telescope/telescope.nvim",
		branch = "0.1.x",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			local builtin = require("telescope.builtin")
			vim.keymap.set("n", "<C-p>", builtin.find_files, {})
			vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
			-- vim.keymap.set("v", "<leader>fg", builtin.live_grep, {})
      -- vim.keymap.set("v", "<leader>fg", function()
      --     local saved = vim.fn.getreg('"')
      --     vim.cmd('noau normal! y')
      --     local selection = vim.fn.getreg('"')
      --     vim.fn.setreg('"', saved)
      --     builtin.live_grep({ default_text = selection })
      -- end, { desc = "Live grep selection" })
		end,
	},
	{
		"nvim-telescope/telescope-ui-select.nvim",
		config = function()
			require("telescope").setup({
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({}),
					},
				},
			})
			require("telescope").load_extension("ui-select")
		end,
	},
}
