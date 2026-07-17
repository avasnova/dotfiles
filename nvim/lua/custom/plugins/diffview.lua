return {
	"sindrets/diffview.nvim",
	dependencies = { "nvim-lua/plenary.nvim" },
	keys = {
		{ "<leader>gD", "<cmd>DiffviewOpen HEAD~1<CR>", desc = "[G]it [D]iffview last commit" },
		{ "<leader>gh", "<cmd>DiffviewFileHistory<CR>", desc = "[G]it file [H]istory (all)" },
		{ "<leader>gH", "<cmd>DiffviewFileHistory %<CR>", desc = "[G]it file [H]istory (current file)" },
		{ "<leader>gq", "<cmd>DiffviewClose<CR>", desc = "[G]it diffview [Q]uit" },
	},
	opts = {},
}
