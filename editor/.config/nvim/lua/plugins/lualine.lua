return {
	"nvim-lualine/lualine.nvim",
	config = function()
		require("lualine").setup({
			options = {
				icons_enabled = true,
				theme = "nightfly",
			},
      sections = {
        lualine_a = {'mode'},
        lualine_b = {'filename'},
        lualine_c = {''},
        lualine_x = {'selectioncount', 'searchcount', 'filetype'},
        lualine_y = {'progress'},
        lualine_z = {'location'}
      },
		})
	end,
}
