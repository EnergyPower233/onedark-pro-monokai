# One Dark Pro Monokai Darker for Neovim

A Neovim port of the VSCode theme
[One Dark Pro Monokai Darker](https://github.com/eser/vscode-one-dark-pro-monokai-darker)
by [eser](https://github.com/eser).

One Dark syntax colors on a deep Monokai background (`#121212`).

The colorscheme is available as `onedark-pro-monokai`, with an optional
`onedark-pro-monokai-transparent` variant.

## Core palette

| Element    | Color                |
| ---------- | -------------------- |
| Background | `#121212`            |
| Foreground | `#bbbbbb`            |
| Comment    | `#5c6370` _(italic)_ |
| Keyword    | `#e06c75`            |
| String     | `#e5c07b`            |
| Function   | `#98c379`            |
| Type/Class | `#61afef`            |
| Constant   | `#56b6c2`            |
| Number     | `#c678dd`            |
| Parameter  | `#d19a66` _(italic)_ |

## Requirements

- Neovim >= 0.10 (tested on 0.12)
- True color support (`vim.opt.termguicolors = true`)

## Install

### lazy.nvim

```lua
{
  "EnergyPower233/onedark-pro-monokai",
  lazy = false,
  priority = 1000,
  config = function()
    vim.opt.termguicolors = true
    vim.cmd.colorscheme("onedark-pro-monokai")
  end,
}
```

For the transparent variant, replace the last line with:

```lua
vim.cmd.colorscheme("onedark-pro-monokai-transparent")
```

### packer.nvim

```lua
use {
  "EnergyPower233/onedark-pro-monokai",
  config = function()
    vim.opt.termguicolors = true
    vim.cmd.colorscheme("onedark-pro-monokai")
  end,
}
```

### vim-plug

```vim
Plug 'EnergyPower233/onedark-pro-monokai'
```

Then in your Neovim config:

```vim
set termguicolors
colorscheme onedark-pro-monokai
```

### Manual

Copy the files inside `colors/` to your Neovim colors directory:

```bash
mkdir -p ~/.config/nvim/colors
cp colors/*.lua ~/.config/nvim/colors/
```

## Usage

Opaque variant:

```lua
vim.cmd.colorscheme("onedark-pro-monokai")
```

Transparent variant:

```lua
vim.cmd.colorscheme("onedark-pro-monokai-transparent")
```

## Transparent background

Two variants are included:

- `onedark-pro-monokai` — opaque background
- `onedark-pro-monokai-transparent` — removes the background from the main
  editor and common built-in Neovim UI highlight groups while keeping selection
  highlights visible

Transparency requires a terminal emulator or compositor with real background
transparency enabled. Without terminal transparency, transparent areas will use
your terminal's background color.

Plugins that define their own highlight groups may require separate transparency
configuration.

## Credits

Original VSCode theme:
[eser/vscode-one-dark-pro-monokai-darker](https://github.com/eser/vscode-one-dark-pro-monokai-darker)

## License

MIT
