-- Banner
lvim.builtin.alpha.dashboard.section.header.val = {}

-- Preferences
vim.opt.relativenumber = true

lvim.colorscheme = "gruvbox-material"

lvim.plugins = {
	{ "sainnhe/gruvbox-material" },
	{
		"christoomey/vim-tmux-navigator",
		cmd = {
			"TmuxNavigateLeft",
			"TmuxNavigateDown",
			"TmuxNavigateUp",
			"TmuxNavigateRight",
		},
	},

	{
		"mattn/emmet-vim",
	},
}

local formatters = require("lvim.lsp.null-ls.formatters")
formatters.setup({
	{ name = "prettier", filetypes = { "javascript", "typescript", "javascriptreact", "typescriptreact" } },
	{ name = "stylua", filetypes = { "lua" } },
})

lvim.format_on_save = true

lvim.keys.normal_mode["<C-h>"] = "<cmd>TmuxNavigateLeft<CR>"
lvim.keys.normal_mode["<C-j>"] = "<cmd>TmuxNavigateDown<CR>"
lvim.keys.normal_mode["<C-k>"] = "<cmd>TmuxNavigateUp<CR>"
lvim.keys.normal_mode["<C-l>"] = "<cmd>TmuxNavigateRight<CR>"

lvim.builtin.which_key.mappings["-"] = {
	"<cmd>vsplit<CR>",
	"Vertical Split",
}

lvim.builtin.which_key.mappings["_"] = {
	"<cmd>split<CR>",
	"Horizontal Split",
}
