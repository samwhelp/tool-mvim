# tool-mvim

* [tool-mvim](https://samwhelp.github.io/tool-svim-doc/) ([GitHub](https://github.com/samwhelp/tool-mvim))


## Install Plugin

mvim use [vim-plug](https://github.com/junegunn/vim-plug) for Plugin Manager.

to install plugin, please run


``` vim
:PlugInstall
```


## Feature

On [Normal Mode](https://vimhelp.org/index.txt.html#normal-index), some key map added.

### Quick Switch

| Key | Map | Description |
| --- | --- | --- |
| `<Backspace>` | [C-w W](https://vimhelp.org/windows.txt.html#CTRL-W_W) | To Previous **Window** |
| `<Tab>` | [C-w w](https://vimhelp.org/windows.txt.html#CTRL-W_w) | To Next **Window** |
| `<Ctrl+j>` | [:bprevious](https://vimhelp.org/windows.txt.html#:bprevious)&lt;CR&gt; | To Previous **Buffer** |
| `<Ctrl+k>` | [:bnext](https://vimhelp.org/windows.txt.html#:bnext)&lt;CR&gt; | To Next **Buffer** |
| `<Ctrl+h>` | [:tabprevious](https://vimhelp.org/tabpage.txt.html#:tabprevious)&lt;CR&gt; | To Previous **TabPage** |
| `<Ctrl+l>` | [:tabnext](https://vimhelp.org/tabpage.txt.html#:tabnext)&lt;CR&gt; | To Next **TabPage** |


## Window Resize

| Key | Map |
| --- | --- |
| `<S-Down>` | [&lt;C-w&gt;-](https://vimhelp.org/windows.txt.html#CTRL-W_-) |
| `<S-Up>` | [&lt;C-w&gt;+](https://vimhelp.org/windows.txt.html#CTRL-W_+) |
| `<S-Left>` | [&lt;C-w&gt;<](https://vimhelp.org/windows.txt.html#CTRL-W_<) |
| `<S-Right>` | [&lt;C-w&gt;>](https://vimhelp.org/windows.txt.html#CTRL-W_>) |

Please read doc/[feature](https://samwhelp.github.io/tool-svim-doc/read/en_us/#/feature) for more key binding,

Or read tool-svim-core/[README.md](https://github.com/samwhelp/tool-svim-core).

## Doc

* [tool-svim-doc](https://samwhelp.github.io/tool-svim-doc)


## Core Plugin

* [tool-svim-core](https://github.com/samwhelp/tool-svim-core) : [[key binding](https://samwhelp.github.io/tool-svim-doc/read/en_us/#/feature)([中文簡介](https://samwhelp.github.io/tool-svim-doc/read/zh_tw/#/feature))] and some option setting.
* [tool-svim-colorfit](https://github.com/samwhelp/tool-svim-colorfit) : for fix color with color scheme used


## Vendor Plugin

* https://github.com/lilydjwg/fcitx.vim
* https://github.com/liuchengxu/vim-which-key
* https://github.com/liuchengxu/eleline.vim
* https://github.com/scrooloose/nerdtree
* https://github.com/francoiscabrol/ranger.vim (Need: [ranger](https://github.com/ranger/ranger))


## Color Scheme Plugin

* https://github.com/joshdick/onedark.vim (default)
* https://github.com/liuchengxu/space-vim-theme 
* https://github.com/sickill/vim-monokai
* https://github.com/morhetz/gruvbox


## Enhance Version

* [tool-lvim](https://github.com/samwhelp/tool-mvim)


## Related Projects

* [tool-svim](https://github.com/samwhelp/tool-svim)
* [tool-hvim](https://github.com/samwhelp/tool-hvim)
* [tool-ivim](https://github.com/samwhelp/tool-ivim)
