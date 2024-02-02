return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	opts = {
		ensure_installed = { "bash", "c", "javascript", "lua", "python", "rust", "typescript", "vim", "vimdoc" },
		
		sync_install = false,
		
		auto_install = true,

		indent = { enable = true },

		highlight = { enable = true },
	}
}
