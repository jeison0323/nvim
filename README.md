## SIMPLE NVIM CONFIGURATION FOR PYTHON DEVELOPMENT
# Introduction
There are 2 branches besides the main branch. As the names suggest, one is for linux and one for windows.
The only difference is the ToggleTerm plugin configuration to always lauch a powershell terminal (Handy if you use Oh my posh like me)
I did this configuration following this video from [TheVimeagen](https://www.youtube.com/@TheVimeagen): [0 to LSP: Neovim RC From Scratch](https://www.youtube.com/watch?v=w7i4amO_zaE)
# DISCLAIMER
Im not an Nvim/Vim expert.
## Installation steps
* Clone the git repository to your `~/.config/` (`C:\Users\YourUser\AppData\Local\` for windows)
* Open nvim
Lazy automatically will install all the necessary plugins for the configuration to work.
* Restart Nvim
## Plugins
Plugins used in this config and its dependencies:
* [plenary](https://github.com/nvim-lua/plenary.nvim)
* [telescope](https://github.com/nvim-telescope/telescope.nvim)
* [nvim-treesiter](https://github.com/nvim-treesitter/nvim-treesitter)
* [vim-fugitive](https://github.com/tpope/vim-fugitive)
* [nvim-web-devicons](https://github.com/nvim-tree/nvim-web-devicons)
* [lualine](https://github.com/nvim-lualine/lualine.nvim)
* [nvim-tree](https://github.com/nvim-tree/nvim-tree.lua)
* [better-escape](https://github.com/max397574/better-escape.nvim)
* [toggleterm](https://github.com/akinsho/toggleterm.nvim)
* [nvim-autopairs](https://github.com/windwp/nvim-autopairs)
* [lsp-zero](https://github.com/VonHeikemen/lsp-zero.nvim)
* [mason](https://github.com/williamboman/mason.nvim)
* [mason-lspconfig](https://github.com/williamboman/mason-lspconfig.nvim)
* [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)
* [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
* [cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp)
* [LuaSnip](https://github.com/L3MON4D3/LuaSnip)
* [indent-blankline](https://github.com/lukas-reineke/indent-blankline.nvim)
* [onedark](https://github.com/navarasu/onedark.nvim)
## Mappings
This configuration uses all default mappings except the ones listed below:
| Key remap | Action | Default Command | Mode |
|----------|----------|----------|----------|
| `" "` | Leader key | `\` | Normal |
| `<leader>w` | Write file in normal mode | `:w` | Normal |
| `<leader>ee` | Opens Nvim-tree explorer | `:NvimTreeToggle` | Normal |
| `<c-h>` | Go to the left panel/buffer | `<c-w>h` | Normal |
| `<c-l>` | Go to the right panel/buffer | `<c-w>l` | Normal |
| `<c-j>` | Go to the bottom panel/buffer | `<c-w>j` | Normal |
| `<c-k` | Go to the top panel/buffer | `<c-w>k`   | Normal |
| `J` | Moves the selected lines down | `:m '>+1<CR>gv=gv` | Visual |
| `K` | Moves the selected lines up | `:m '>-2<CR>gv=gv` | Visual |
| `<leader>p` | Paste yanked lines without replacing the nvim clipboard | `\"_dp` | Normal |
| `<leader>y` | Yank into the system clipboardr | `\"+y` | Normal/Visual |
| `<leader>Y` | Yank into the system clipboard | `\"+Y` | Normal/Visual |
| `<leader>d` | Delete without yanking the selected lines/character | `\"_d` | Normal/Visual |
| `jj` | Return to normal mode from insert mode | `<Esc>` | Normal |
| `jk` | Return to normal mode from insert mode | `<Esc>` | Normal |
| `<leader>gs` | Opens fugitive's git status | ` vim.cmd.Git` | Normal |
| `<CR>` | Confirms autocompletion on LSP popup |  | Insert |
| `<Tab>` | Select next item on LSP popup |  | Insert |
| `<C-Space>` | Opens autocomplete popup |  | Insert |
| `<leader>pf` | Opens Telescope file finder |  | Normal |
| `<leader>ps` | Opens Telescope finder with grep command |  | Normal |
| `<C-\>` | Open and close terminal from ToggleTerm | `:ToggleTerm` | Normal/Insert |
## Windows Extra steps
Follow this steps if you want to avoid errors when working on Windows. Better to do this prior the installation steps.
* Install [Chocolatey](https://chocolatey.org/install)
* Run in an Admin Powershell `choco install mingw`
* Run `Import-Module $env:ChocolateyInstall\helpers\chocolateyProfile.psm1`
* Run `refreshenv`
This will allow the LSP to work.
