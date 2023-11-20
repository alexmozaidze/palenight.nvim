local M = {}
M["min-version"] = vim.version.parse("0.8.0")
M["supported-nvim-version?"] = function()
	return (0 <= vim.version.cmp(vim.version(), M["min-version"]))
end
M["supports-cur-search?"] = function()
	return (0 <= vim.version.cmp(vim.version(), vim.version.parse("0.9.0")))
end
return M
