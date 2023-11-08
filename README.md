<div align="center">

# palenight.vim

![palenight.vim](demo-screenshot.png)

</div>

> **Note**
> This is a maintained fork of [drewtempelmeyer/palenight.vim][original-work]. In the future, **Vim support will be dropped!**

A dark color scheme for Vim/Neovim based off the [Material Pale Night][material-pale-night] color scheme. Much of the work is based on the lovely [onedark.vim][onedark] color scheme.

## Installation

Simply install the plugin with your favourite plugin manager. No setup required, everything loads automatically!

## Requirements

```lua
vim.opt.background = "dark"
```

## Usage

```lua
vim.cmd.colorscheme "palenight"
```

To configure lightline, add the following line:

```lua
vim.g.lightline = { colorscheme: "palenight" }
```

To configure airline, add the following line:

```lua
vim.g.airline_theme = "palenight"
```

### True Colors

It's recommended you have true-color enabled for the full raster of colors to unfold before your very eyes.

```lua
vim.opt.termguicolors = true
```

### Italics

Some terminals don't support italic text. If you want to enable italic text, put the following in your config.

```lua
vim.g.palenight_terminal_italics = 1
```

[original-work]: https://github.com/drewtempelmeyer/palenight.vim
[material-pale-night]: https://github.com/equinusocio/material-theme
[onedark]: https://github.com/joshdick/onedark.vim
[vimplug]: https://github.com/junegunn/vim-plug
[firaCode]: https://github.com/tonsky/FiraCode
