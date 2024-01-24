local M = {}
M["auto-cterm-palette"] = function()
	local exec
	local function _1_(_241)
		return (os.execute(_241) == 0)
	end
	exec = _1_
	local command_exists_3f
	local function _2_(_241)
		return (vim.fn.executable(_241) == 1)
	end
	command_exists_3f = _2_
	local term_tty_3f = exec("[ \"$TERM\" = 'linux' ]")
	local display_3f = exec("[ -n \"$DISPLAY\" ]")
	local wayland_display_3f = exec("[ -n \"$WAYLAND_DISPLAY\" ]")
	local termux_3f = command_exists_3f("termux-setup-storage")
	local macos_3f = (vim.loop.os_uname().sysname == "Darwin")
	local tty_3f = (term_tty_3f or (not display_3f and not wayland_display_3f and not termux_3f and not macos_3f))
	if tty_3f then
		return 16
	else
		return 256
	end
end
M["require-cterm"] = function(_3fpalette)
	local notify = require("palenight/_notify")
	local _let_4_ = require("palenight/_config")
	local opts = _let_4_["opts"]
	local palette = (_3fpalette or opts.cterm_palette)
	if (palette == "auto") then
		return M["require-cterm"](M["auto-cterm-palette"]())
	elseif (palette == 16) then
		return require("palenight/colors/cterm16")
	elseif (palette == 256) then
		return require("palenight/colors/cterm256")
	elseif (nil ~= palette) then
		local invalid = palette
		return notify.error(string.format("%s \"%s\"", notify.messages["invalid-cterm-option"], invalid))
	else
		return nil
	end
end
return M
