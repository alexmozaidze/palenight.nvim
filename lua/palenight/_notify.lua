local plugin_title = "palenight.nvim"
local M = {}
M.messages = {["unsupported-nvim-version"] = "Only nvim >=0.8 is supported. Proceed at your own risk!", ["invalid-cterm-option"] = "Invalid `cterm_palette` option"}
M.notify = function(message, log_level)
	_G.assert((nil ~= log_level), "Missing argument log-level on fnl/palenight/_notify.fnl:8")
	_G.assert((nil ~= message), "Missing argument message on fnl/palenight/_notify.fnl:8")
	local notify_plugin_present_3f = pcall(require, "notify")
	if notify_plugin_present_3f then
		return require("notify")(message, log_level, {title = plugin_title})
	else
		return vim.notify((plugin_title .. ": " .. message), log_level)
	end
end
M["notify-warn"] = function(message)
	_G.assert((nil ~= message), "Missing argument message on fnl/palenight/_notify.fnl:14")
	return M.notify(message, vim.log.levels.WARN)
end
M["notify-error"] = function(message)
	_G.assert((nil ~= message), "Missing argument message on fnl/palenight/_notify.fnl:17")
	return M.notify(message, vim.log.levels.ERROR)
end
return M
