# One Dark Pro Monokai Darker for Neovim

A faithful Neovim port of the VSCode theme
[One Dark Pro Monokai Darker](https://github.com/eser/vscode-one-dark-pro-monokai-darker)
by [eser](https://github.com/eser).

One Dark syntax colors on a deep Monokai background (`#121212`).

## Palette

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
- `termguicolors` enabled

## Install

### lazy.nvim

```lua
{
  "EnergyPower233/onedark-pro-monokai",
  lazy = false,
  priority = 1000,
  config = function()
    vim.cmd.colorscheme("onedark-pro-monokai")               -- opaque
    -- vim.cmd.colorscheme("onedark-pro-monokai-transparent") -- transparent
  end,
}
```

### packer.nvim

```lua
use {
  "EnergyPower233/onedark-pro-monokai",
  config = function()
    vim.cmd.colorscheme("onedark-pro-monokai")
  end,
}
```

### vim-plug

```vim
Plug 'EnergyPower233/onedark-pro-monokai'
" then in your config:
colorscheme onedark-pro-monokai
```

### Manual

Copy the `colors/` directory to `~/.config/nvim/colors/`.

## Transparent background

Two variants are included:

- `onedark-pro-monokai` — opaque background
- `onedark-pro-monokai-transparent` — editor background, floats, statusline,
  tabline, gutter and completion menu are transparent; selection and
  completion-selection stay visible

Transparency requires a terminal emulator or compositor with real background
transparency (e.g. kitty/alacritty `background_opacity`, or a compositor).
Without terminal transparency, transparent areas will use
your terminal's background color.

## Credits

Original VSCode theme:
[eser/vscode-one-dark-pro-monokai-darker](https://github.com/eser/vscode-one-dark-pro-monokai-darker)

## License

MIT
