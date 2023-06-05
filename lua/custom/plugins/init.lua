-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
	-- set up prettier as formatter through null_ls
	'jose-elias-alvarez/null-ls.nvim',
	config = function()
		local null_ls = require("null-ls")
		local sources = { null_ls.builtins.formatting.prettierd }
		null_ls.setup({
			sources = sources,
		})
		null_ls.setup({ sources = sources })
	end
}
