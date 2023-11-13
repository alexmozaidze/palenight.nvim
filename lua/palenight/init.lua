 local messages = {["unsupported-nvim-version"] = "Only nvim >=0.8 is supported. Proceed at your own risk!", ["unsupported-light-theme"] = "Light theme is unsupported. Set `background` to `dark`."}


 local function warn(message) _G.assert((nil ~= message), "Missing argument message on fnl/palenight/init.fnl:4")
 return vim.notify(("palenight.nvim: " .. message), vim.log.levels.WARN) end

 local function supported_nvim_version_3f() local min_version = 8

 local _let_1_ = vim.version() local version = _let_1_["minor"]

 return (min_version <= version) end

 local M = {}

 M.config = {italic = true}

 M.setup = function(_3fuser_config)
 local user_config = (_3fuser_config or {})
 local new_config = vim.tbl_deep_extend("force", M.config, user_config)
 M.config = new_config return nil end

 M.load = function()
 if not supported_nvim_version_3f() then
 warn(messages["unsupported-nvim-version"]) else end
 if (vim.opt.background == "light") then
 warn(messages["unsupported-light-theme"]) else end
 do local colorscheme_loaded_3f = vim.g.colors_name
 if colorscheme_loaded_3f then
 vim.cmd.hi("clear") else end end vim.g.colors_name = "palenight"

 local groups = require("palenight/groups")
 for group, hl in pairs(groups) do
 hl.italic = (M.italic and hl.italic)
 vim.api.nvim_set_hl(0, group, hl) end return nil end

 return M
