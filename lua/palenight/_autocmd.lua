local group = vim.api.nvim_create_augroup("palenight.nvim", {})
local function array_of_strings_3f(tbl)
	_G.assert((nil ~= tbl), "Missing argument tbl on fnl/palenight/_autocmd.fnl:3")
	local function _1_()
		local all_strings_3f = true
		for _, val in ipairs(tbl) do
			if not all_strings_3f then break end
			all_strings_3f = ("string" == type(val))
		end
		return all_strings_3f
	end
	return (vim.islist(tbl) and _1_())
end
local M = {}
M.autocmd = function(event, opts)
	_G.assert((nil ~= opts), "Missing argument opts on fnl/palenight/_autocmd.fnl:13")
	_G.assert((nil ~= event), "Missing argument event on fnl/palenight/_autocmd.fnl:13")
	assert((("string" == type(event)) or array_of_strings_3f(event)), "event must be a string or an array of strings")
	assert(("table" == type(opts)), "opts must be a table")
	return vim.api.nvim_create_autocmd(event, vim.tbl_extend("force", opts, {group = group}))
end
return M
