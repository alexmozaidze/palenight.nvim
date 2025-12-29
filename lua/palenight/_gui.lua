local M = {}
M["define-terminal-colors"] = function()
	local gui_colors = require("palenight/colors/gui")
	for i, color in ipairs(gui_colors) do
		vim.g[("terminal_color_" .. i)] = color
	end
	return nil
end
M["clear-terminal-colors"] = function()
	for i = 0, 15 do
		vim.g[("terminal_color_" .. i)] = nil
	end
	return nil
end
return M
