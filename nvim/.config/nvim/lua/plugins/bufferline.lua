return {
	"akinsho/bufferline.nvim",
	event = "VeryLazy",
	keys = {
		{ "<S-h>", "<cmd>BufferLineCyclePrev<cr>", desc = "Prev Buffer" },
		{ "<S-l>", "<cmd>BufferLineCycleNext<cr>", desc = "Next Buffer" },
	},
	opts = {
		options = {
			always_show_bufferline = false,
			offsets = {
				{
					filetype = "neo-tree",
					text = "File Explorer",
					highlight = "Directory",
					text_align = "center",
				},
			},
			separator_style = "slant",
		},
	},
	config = function(_, opts)
		require("bufferline").setup(opts)
	end,
}
