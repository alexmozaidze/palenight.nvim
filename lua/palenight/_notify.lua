local plugin_title = "palenight.nvim"
local M = {}
M.messages = {["unsupported-nvim-version"] = "Only nvim >=0.8 is supported. Proceed at your own risk!", ["unsupported-light-theme"] = "Light theme is unsupported. Set `background` to `dark`.", ["invalid-cterm-option"] = "Invalid `cterm_palette` option"}
M.notify = function(message, log_level)
	_G.assert((nil ~= log_level), "Missing argument log-level on fnl/palenight/_notify.fnl:9")
	_G.assert((nil ~= message), "Missing argument message on fnl/palenight/_notify.fnl:9")
	local notify_plugin_present_3f = pcall(require, "notify")
	if notify_plugin_present_3f then
		return require("notify")(message, log_level, {title = plugin_title})
	else
		return vim.notify((plugin_title .. ": " .. message), log_level)
	end
end
M.warn = function(message)
	_G.assert((nil ~= message), "Missing argument message on fnl/palenight/_notify.fnl:15")
	return M.notify(message, vim.log.levels.WARN)
end
M.error = function(message)
	_G.assert((nil ~= message), "Missing argument message on fnl/palenight/_notify.fnl:18")
	return M.notify(message, vim.log.levels.ERROR)
end
return M
