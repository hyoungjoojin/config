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

	-- LSP
	{ "folke/trouble.nvim" }, -- Display diagnostics information in sidebar
	{ "hedyhli/outline.nvim" }, -- Display code AST in sidebar

	{ "mattn/emmet-vim" },
}

require("outline").setup({})
require("trouble").setup({})
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

-- LSP
lvim.builtin.which_key.mappings["lo"] = {
	":Outline<CR>",
	"Toggle Outline",
}

lvim.builtin.which_key.mappings["lw"] = {
	":Trouble diagnostics toggle<CR>",
	"Toggle Diagnostics.",
}
