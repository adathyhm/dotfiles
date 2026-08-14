-- ================================================================================================
-- TITLE : nvim-tree.lua
-- ABOUT : A file explorer tree for Neovim, written in Lua.
-- LINKS :
--   > github : https://github.com/nvim-tree/nvim-tree.lua
-- ================================================================================================

return {
	"nvim-tree/nvim-tree.lua",
	lazy = false,
	opts = {
		filters = {
			dotfiles = false, -- Show hidden files (dotfiles)
		},
		view = {
			adaptive_size = true,
		},
	},
}
