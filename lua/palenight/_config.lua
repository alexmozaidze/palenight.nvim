local M = {}
M.opts = {cterm_palette = "auto", italic = false}
M.setup = function(_3fopts)
	local opts = (_3fopts or {})
	local new_opts = vim.tbl_deep_extend("force", M.opts, opts)
	M.opts = new_opts
	return nil
end
return M
