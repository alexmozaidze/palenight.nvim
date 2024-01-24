local _local_1_ = require("palenight/_colors")
local require_cterm = _local_1_["require-cterm"]
local _local_2_ = require("palenight/_config")
local opts = _local_2_["opts"]
local colors = require("palenight/colors/truecolor")
local colors_cterm = require_cterm()
local c
if vim.o.termguicolors then
	c = colors
else
	c = colors_cterm
end
local function active_mode_bg()
	if (opts.cterm_palette == 16) then
		return c.black
	else
		return c.menu
	end
end
local function get_bold()
	if (opts.cterm_palette ~= 16) then
		return "bold"
	else
		return nil
	end
end
return {normal = {a = {fg = c.black, bg = c.purple, gui = get_bold()}, b = {fg = c.purple, bg = active_mode_bg()}, c = {fg = c.comment, bg = c.black}}, insert = {a = {fg = c.black, bg = c.blue, gui = get_bold()}, b = {fg = c.blue, bg = active_mode_bg()}}, visual = {a = {fg = c.black, bg = c.cyan, gui = get_bold()}, b = {fg = c.cyan, bg = active_mode_bg()}}, replace = {a = {fg = c.black, bg = c.green, gui = get_bold()}, b = {fg = c.green, bg = active_mode_bg()}}, inactive = {a = {fg = c.black, bg = c.menu, gui = get_bold()}, b = {fg = c.black, bg = c.menu}, c = {fg = c.black, bg = c.menu}}}
