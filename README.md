<div align="center">

# palenight.vim

![palenight.vim](demo-screenshot.png)

</div>

> **Note**
> This is a maintained hard fork of [drewtempelmeyer/palenight.vim][original-work].

A dark color scheme for Neovim based off the [Material Pale Night][material-pale-night] color scheme. Much of the work is based on the lovely [onedark.vim][onedark] color scheme.

## Requirements

NeoVim >=0.8 and the following options set:
```lua
vim.opt.background = "dark"
vim.opt.termguicolors = true
```

## Installation

<details><summary>Lazy</summary>

```lua
{ "alexmozaidze/palenight.nvim" }
```

</details>

<details><summary>Packer</summary>

```lua
use "alexmozaidze/palenight.nvim"
```

</details>

## Usage

```lua
vim.cmd.colorscheme "palenight"
```

## Setup options

> **Note**
> Setup is completely optional. You only need it to set options. Plugin loads by itself when you set colorscheme.

Here are the default options:
```lua
{
   italic = true, -- Some terminals don't display italics very well
}
```

## Plugin support

Many plugins are supported, the most important ones being:
- [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)
- [rainbow-delimiters.nvim](https://gitlab.com/HiPhish/rainbow-delimiters.nvim)

For full list of supported plugins, see [groups.fnl](fnl/palenight/groups.fnl#L340).

If you have a plugin that isn't supported, feel free to file an issue or make a pull request!

## Overriding colors

NeoVim already has an easy way of overriding colors of a colorscheme. Here's an example!

```lua
local colors = require "palenight/colors"
local hl = vim.api.nvim_set_hl
local autocmd = vim.api.nvim_create_autocmd

autocmd("ColorScheme", {
   pattern = "palenight",
   callback = function()
      -- Directly setting a color
      hl(0, "Operator", { fg = colors.purple })
      -- Linking to another highlight group
      hl(0, "Operator", { link = "Macro" })
   end,
})
```

For list of available colors check out [colors.fnl][colors].  
Also check out `:help nvim_set_hl()` and `:help nvim_create_autocmd()`.

[colors]: fnl/palenight/colors.fnl
[original-work]: https://github.com/drewtempelmeyer/palenight.vim
[material-pale-night]: https://github.com/equinusocio/material-theme
[onedark]: https://github.com/joshdick/onedark.vim
[vimplug]: https://github.com/junegunn/vim-plug
[firaCode]: https://github.com/tonsky/FiraCode
