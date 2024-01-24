local config = require("palenight/_config")
local _local_1_ = require("palenight/_notify")
local notify_warn = _local_1_["notify-warn"]
local messages = _local_1_["messages"]
local _local_2_ = require("palenight/_checks")
local supported_nvim_version_3f = _local_2_["supported-nvim-version?"]
local M = {}
M.setup = config.setup
M.load = function()
	if not supported_nvim_version_3f() then
		notify_warn(messages["unsupported-nvim-version"])
	else
	end
	if vim.g.colors_name then
		vim.cmd.hi("clear")
	else
	end
	vim.g.colors_name = "palenight"
	local groups = require("palenight/groups")
	for group, hl in pairs(groups) do
		local hl0 = vim.deepcopy(hl)
		hl0.italic = (config.opts.italic and hl0.italic)
		vim.api.nvim_set_hl(0, group, hl0)
	end
	return nil
end
return M
