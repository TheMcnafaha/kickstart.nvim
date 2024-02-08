-- File: lua/custom/plugins/autopairs.lua

return {
	"laytan/tailwind-sorter.nvim",
	-- Optional dependency
	dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-lua/plenary.nvim' },
	config = function()
		require('tailwind-sorter').setup({
			build = 'cd formatter && npm i && npm run build',
			config = true,
			on_save_enabled = false, -- If `true`, automatically enables on save sorting.
			on_save_pattern = { '*.html', '*.js', '*.jsx', '*.tsx', '*.twig', '*.hbs', '*.php', '*.heex',
				'*.astro' }, -- The file patterns to watch and sort.
			node_path = 'node',
		})
	end,
}
