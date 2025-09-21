# lantern-corps.nvim

A Neovim colorscheme inspired by DC Universe's Lantern Corps emotional spectrum. Dark modes only, with sub-themes for each Corps (including extras like Ultraviolet and Gold). Blend the full spectrum or pick your emotion!

## Features
- Dark, high/low-contrast variants.
- Treesitter and LSP support for thematic highlights (e.g., errors in counter-Corps colors).
- Lazy-loadable.
- "Corpses" mode for undead, desaturated twists (Black Lantern influence).
- Config: `vim.g.lantern_corps = 'green'` or `vim.g.lantern_variant = 'corpses'`.

## Installation
With lazy.nvim:
```lua
    {
        'mavantgarderc/lantern-corps.nvim',
        lazy = true,
        config = function()
            vim.cmd.colorscheme 'lantern'
        end
    }
```
