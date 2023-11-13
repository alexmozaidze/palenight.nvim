<div align="center">

# palenight.vim

![palenight.nvim](demo-screenshot.png)

</div>

> **Note**
> This is a maintained hard fork of [drewtempelmeyer/palenight.vim][original-work].

Dark palenight colorscheme written in [Fennel][fennel] with full support for Tree-sitter, LSP (including semantic highlighting), and [lots of plugins](#plugin-support).

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
- [nvim-treesitter][tree-sitter]
- [lualine.nvim][lualine]
- [rainbow-delimiters.nvim][rainbow-delimiters]
- [gitsigns.nvim][gitsigns]
- [indent-blankline.nvim][ibl]
- [hlargs.nvim][hlargs]

For full list of supported plugins, see [groups.fnl](fnl/palenight/groups.fnl#L346).

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

---

If you want to change the *internal color table* - you can, but I don't know why you'd want this. Here's an example
```lua
-- IMPORTANT! This must be done before colorscheme is loaded.
local colors = require "palenight/colors"
colors.comment = "#ff00ff"
```

[fennel]: https://fennel-lang.org/
[hlargs]: https://github.com/m-demare/hlargs.nvim
[ibl]: https://github.com/lukas-reineke/indent-blankline.nvim
[gitsigns]: https://github.com/lewis6991/gitsigns.nvim
[rainbow-delimiters]: https://gitlab.com/HiPhish/rainbow-delimiters.nvim
[lualine]: https://github.com/nvim-lualine/lualine.nvim
[tree-sitter]: https://github.com/nvim-treesitter/nvim-treesitter
[colors]: fnl/palenight/colors.fnl
[original-work]: https://github.com/drewtempelmeyer/palenight.vim
[vimplug]: https://github.com/junegunn/vim-plug
[firaCode]: https://github.com/tonsky/FiraCode
