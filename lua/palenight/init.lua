 local messages = {["unsupported-nvim-version"] = "Only nvim >=0.8 is supported. Proceed at your own risk!", ["unsupported-light-theme"] = "Light theme is unsupported. Set `background` to `dark`."}


 local function warn(message) _G.assert((nil ~= message), "Missing argument message on fnl/palenight/init.fnl:4")
 return vim.notify(("palenight.nvim: " .. message), vim.log.levels.WARN) end

 local M = {}

 M.config = {italic = true}

 M.setup = function(_3fuser_config)
 local user_config = (_3fuser_config or {})
 local new_config = vim.tbl_deep_extend("force", M.config, user_config)
 M.config = new_config return nil end

 M.load = function()
 do local unsupported_nvim_version_3f = (vim.version().minor <= 7)
 if unsupported_nvim_version_3f then
 warn(messages["unsupported-nvim-version"]) else end end
 if (vim.opt.background == "light") then
 warn(messages["unsupported-light-theme"]) else end
 do local colorscheme_loaded_3f = vim.g.colors_name
 if colorscheme_loaded_3f then
 vim.cmd.hi("clear") else end end vim.g.colors_name = "palenight"


 local groups = require("palenight/groups")
 for _, group in ipairs(groups) do
 local hl = group.hl
 group.hl = nil
 group.italic = (M.italic and group.italic)
 vim.api.nvim_set_hl(0, hl, group) end return nil end

 return M
