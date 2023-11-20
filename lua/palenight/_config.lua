local M = {}
M.config = {cterm_palette = "auto", italic = false}
M.setup = function(_3fuser_config)
	local user_config = (_3fuser_config or {})
	local new_config = vim.tbl_deep_extend("force", M.config, user_config)
	M.config = new_config
	return nil
end
return M
