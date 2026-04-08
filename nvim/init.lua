vim.opt.clipboard = "unnamedplus"

vim.cmd([[
  set number
  set shiftwidth=4
  set tabstop=4
  set expandtab
]])


vim.pack.add({
  -- Install "plugin1" and use default branch (usually `main` or `master`)
  'https://github.com/xiyaowong/transparent.nvim',
  'https://github.com/nuvic/flexoki-nvim',
  'https://github.com/mason-org/mason.nvim',
  'https://github.com/nvim-treesitter/nvim-treesitter',
  'https://github.com/saghen/blink.cmp',
  'https://github.com/stevearc/conform.nvim',
  'https://github.com/rafamadriz/friendly-snippets',
  'https://github.com/lewis6991/gitsigns.nvim',
  'https://github.com/mason-org/mason-lspconfig.nvim',
  'https://github.com/neovim/nvim-lspconfig',
  'https://github.com/folke/trouble.nvim',
  'https://github.com/nvim-telescope/telescope.nvim',
  'https://github.com/voldikss/vim-floaterm',
  'https://github.com/ptzz/lf.vim',

  })

vim.cmd.colorscheme('flexoki')

vim.o.background = "dark"

vim.g.lf_replace_netrw = 1

require("flexoki").setup({
  plugins = {
    "gitsigns", -- gitsigns.nvim
    "nvim_treesitter_context",
    "which_key", -- which-key.nvim
  },
})

require("transparent").setup({
	-- table: default groups
	groups = {
		"Normal",
		"NormalNC",
		"Comment",
		"Constant",
		"Special",
		"Identifier",
		"Statement",
		"PreProc",
		"Type",
		"Underlined",
		"Todo",
		"String",
		"Function",
		"Conditional",
		"Repeat",
		"Operator",
		"Structure",
		"LineNr",
		"NonText",
		"SignColumn",
		"CursorLine",
		"CursorLineNr",
		"StatusLine",
		"StatusLineNC",
		"EndOfBuffer",
	},
	-- table: additional groups that should be cleared
	extra_groups = {},
	-- table: groups you don't want to clear
	exclude_groups = {},
	-- function: code to be executed after highlight groups are cleared
	-- Also the user event "TransparentClear" will be triggered
	on_clear = function() end,
})

require("mason").setup()

require('nvim-treesitter').install {
        "bash",
        "html",
        "javascript",
        "json",
        "lua",
        "markdown",
        "markdown_inline",
        "python",
        "query",
        "regex",
        "tsx",
        "typescript",
        "vim",
        "yaml",
}

require('blink.cmp').setup({
  keymap = { preset = 'default' },

  appearance = {
    nerd_font_variant = 'mono'
  },

  completion = {
    documentation = { auto_show = false }
  },

  sources = {
    default = { 'lsp', 'path', 'snippets', 'buffer' },
  },

  fuzzy = {
    implementation = "lua"
  }
})



vim.lsp.enable('omnisharp')
vim.lsp.enable('ast-grep')
vim.lsp.enable('clangd')


