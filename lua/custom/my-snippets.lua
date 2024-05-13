require("custom.ts-snippets")
local ls = require("luasnip")
-- some shorthands...
local s = ls.snippet
local sn = ls.snippet_node
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local c = ls.choice_node
local d = ls.dynamic_node
local r = ls.restore_node
local l = require("luasnip.extras").lambda
local rep = require("luasnip.extras").rep
local p = require("luasnip.extras").partial
local m = require("luasnip.extras").match
local n = require("luasnip.extras").nonempty
local dl = require("luasnip.extras").dynamic_lambda
local fmt = require("luasnip.extras.fmt").fmt
local fmta = require("luasnip.extras.fmt").fmta
local types = require("luasnip.util.types")
local conds = require("luasnip.extras.expand_conditions")
vim.keymap.set("i", "<C-n>", function()
	if ls.choice_active() then
		ls.change_choice(1)
	end
end, { desc = "change snippet choice" })
-- ls.add_snippets("lua",
-- 	{ s("lf"),
-- 		{ "local $1 = function($2)\n $0\nend" } }
-- )
ls.add_snippets("all", {
	s("hw", {
		t("hellow world")
	})
})

ls.add_snippets("all", {
	s("help", {
		t("local "), i(1), t(" function("), i(2), t(")"),
		i(0),
		t("end")
	})
})
ls.add_snippets("all", {
	s({ trig = "trigger" }, {
		t({ "After expanding, the cursor is here ->" }), i(1),
		t({ "", "After jumping forward once, cursor is here ->" }), i(2),
		t({ "", "After jumping once more, the snippet is exited there ->" }), i(0),
	})
})
ls.add_snippets("all", {
	s("example2", fmt([[
  if {} then
    {}
  end
  ]], {
		-- i(1) is at nodes[1], i(2) at nodes[2].
		i(1, "not now"), i(2, "when")
	})),
})
ls.add_snippets("lua", {
	s("snippet", fmt([[
  ls.add_snippets("{}",{{
	s("{}",{})
  }})
  ]], {
		-- i(1) is at nodes[1], i(2) at nodes[2].
		i(1, "file"), i(2, "trigger"), i(3, "sn")
	})),
})
ls.add_snippets("lua", {
	s("lf", fmt([[
-- Defined in $TM_FILENAME
local {} = function({})
{}
end
]], { i(1), i(2), i(3) }))
})

ls.add_snippets("lua", {
	s("muti", fmt([[
pick: {}
{}
]], {
		c(1, { ls.text_node("me "), ls.text_node("other me") }), i(2, "great choice!!!")
	}))
})
ls.add_snippets("lua", {
	s("ct", f(function()
		return os.date "%D - %H:%M"
	end))
})
ls.add_snippets("lua", {
	s("req", fmt([[
local {} = require "{}"
]], {
		f(function(import_strg)
			local parts = vim.split(import_strg[1][1], ".", { plain = true })
			return parts[#parts] or ""
		end, { 1 }), i(1)
	}))
})
