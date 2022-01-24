### This plugin is under development

# Figlet.nvim

## About
This plugin gives an easy wrapper around the already available command line utility **figlet**. This is useful for giving a stylish look to your config files.

Note: 🙇I am a noob in lua and plugin development, So this is just my attempt to write a plugin. Any suggestions are appreciated.

## Dependencies
- You should have command line utility called figlet
```bash
sudo pacman -S figlet
```
- Fonts for figlet in initial release I have used font called as ANSI shadow and ANSI Regular. You should have these fonts installed.
```bash
git clone https://github.com/xero/figlet-fonts.git
cp  figlet-fonts/* /usr/share/figlet/fonts/
```

- Comment Support using comment.nvim
Please Install comment.nvim if you want comment support
```lua
use("numToStr/Comment.nvim")
```

## Installation

You can use any plugin Manager you use
- Packer.nvim
```lua
use('pavanbhat1999/figlet.nvim')
```

## Usage
Syntax  `:Fig <pattern_string>`

Example  `:Fig neovim`

![Main Fig](/home/root99/Downloads/Wall/L.png)

Syntax  `:FigComment <pattern_string>`

Example `:FigComment NeoVim`

![Main Fig](/home/root99/Downloads/Wall/L.png)

Syntax `:FigSelect <pattern_string>`

Example `:FigSelect neovim`

![Main Fig](/home/root99/Downloads/Wall/L.png)

Syntax `:FigSelectComment <pattern_string>`

Example `:FigSelectComment neovim`

![Main Fig](/home/root99/Downloads/Wall/L.png)

Syntax `:FigList`

Example `:FigList`

![Main Fig](/home/root99/Downloads/Wall/L.png)

