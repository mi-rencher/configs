return {
	-- Autoclose and autorename HTML tags.
	{
		"windwp/nvim-ts-autotag",
		config = function()
			require("nvim-ts-autotag").setup()
		end,
	},

	-- Wisely add "end" in ruby, lua, vimscript, etc.
	{
		"RRethy/nvim-treesitter-endwise",
		dependencies = "nvim-treesitter/nvim-treesitter",
	},
}
