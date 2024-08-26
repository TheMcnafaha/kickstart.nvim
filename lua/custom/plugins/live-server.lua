-- File: lua/custom/plugins/autopairs.lua

return {
	"barrett-ruth/live-server.nvim",
	-- Optional dependency
	dependencies = { 'hrsh7th/nvim-cmp' },
	config = function()
		require('live-server').setup()
	end,
}
