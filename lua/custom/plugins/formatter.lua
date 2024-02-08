return {
	"mhartington/formatter.nvim",
	config = function()
		-- Utilities for creating configurations
		local util = require "formatter.util"

		-- Provides the Format, FormatWrite, FormatLock, and FormatWriteLock commands
		require("formatter").setup {
			-- Enable or disable logging
			logging = true,
			-- Set the log level
			log_level = vim.log.levels.WARN,
			-- All formatter configurations are opt-in
			filetype = {
				typescript = {
					-- prettierd
					function()
						return {
							exe = "prettierd",
							args = { vim.api.nvim_buf_get_name(0) },
							stdin = true
						}
					end
				},
				-- other formatters ...
			}
		}
	end
}
-- -- File: lua/custom/plugins/autopairs.lua
--
-- return {
-- 	"windwp/nvim-autopairs",
-- 	-- Optional dependency
-- 	dependencies = { 'hrsh7th/nvim-cmp' },
-- 	config = function()
-- 		require("nvim-autopairs").setup {}
-- 		-- If you want to automatically add `(` after selecting a function or method
-- 		local cmp_autopairs = require('nvim-autopairs.completion.cmp')
-- 		local cmp = require('cmp')
-- 		cmp.event:on(
-- 			'confirm_done',
-- 			cmp_autopairs.on_confirm_done()
-- 		)
-- 	end,
-- }
