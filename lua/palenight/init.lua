local config = require("palenight/_config")
local _local_1_ = require("palenight/_notify")
local notify_warn = _local_1_["notify-warn"]
local messages = _local_1_["messages"]
local _local_2_ = require("palenight/_checks")
local supported_nvim_version_3f = _local_2_["supported-nvim-version?"]
local M = {}
M.setup = config.setup
M.load_terminal_colors = function()
	local _let_3_ = require("palenight/_gui")
	local define_terminal_colors = _let_3_["define-terminal-colors"]
	local clear_terminal_colors = _let_3_["clear-terminal-colors"]
	local _let_4_ = require("palenight/_autocmd")
	local autocmd = _let_4_["autocmd"]
	define_terminal_colors()
	return autocmd("ColorSchemePre", {once = true, callback = clear_terminal_colors})
end
M.load_colorscheme = function()
	local groups = require("palenight/groups")
	for group, hl in pairs(groups) do
		local hl0 = vim.deepcopy(hl)
		hl0.italic = (config.opts.italic and hl0.italic)
		vim.api.nvim_set_hl(0, group, hl0)
	end
	return nil
end
M.load = function()
	if not supported_nvim_version_3f() then
		notify_warn(messages["unsupported-nvim-version"])
	else
	end
	vim.cmd.hi("clear")
	vim.g.colors_name = "palenight"
	M.load_terminal_colors()
	return M.load_colorscheme()
end
return M
