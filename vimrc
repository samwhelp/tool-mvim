

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: Base
""

set nocompatible

scriptencoding utf-8

""
""" Tail: Base
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""




""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: ColorScheme
""

function! s:ColorSchemePick () abort

	" ## background
	set background=dark
	"set background=light


	" ## pick colorscheme
	colorscheme space_vim_theme
	"colorscheme monokai
	"colorscheme gruvbox


	" ## ubuntu default colorscheme
	" $ dpkg -L vim-runtime | grep colors
	" $ ls /usr/share/vim/vim80/colors/ -1
	" $ ls /usr/share/vim/vim80/colors/ -1 | grep '\.vim' | awk -F '.' '{print $1}'
	" $ ls /usr/share/vim/vim80/colors/ -1 | grep '\.vim' | awk -F '.' '{print "\"colorscheme", $1}'

	"colorscheme blue
	"colorscheme darkblue
	"colorscheme default
	"colorscheme delek
	"colorscheme desert
	"colorscheme elflord
	"colorscheme evening
	"colorscheme industry
	"colorscheme koehler
	"colorscheme morning
	"colorscheme murphy
	"colorscheme pablo      			" *
	"colorscheme peachpuff				" *
	"colorscheme ron
	"colorscheme shine
	"colorscheme slate					" *
	"colorscheme torte
	"colorscheme zellner

endfunction


function! s:ColorSchemeUse () abort

	try
		call s:ColorSchemePick()
	catch
		echomsg ' '
		echomsg '+NotInstall ColorScheme:'
		echomsg '    # Please install first:'
		echomsg ':PlugInstall'
		return
	endtry

endfunction

""
""" Tail: ColorScheme
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: PlugColorScheme
""


function! s:PlugColorScheme () abort

	" ## https://www.jianshu.com/p/aadce0fe9649
	" ## https://github.com/liuchengxu/space-vim-theme
	Plug 'liuchengxu/space-vim-theme'

	" ## https://github.com/sickill/vim-monokai
	Plug 'sickill/vim-monokai'

	" ## https://github.com/morhetz/gruvbox
	Plug 'morhetz/gruvbox'

endfunction

""
""" Tail: PlugColorScheme
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: PlugEnhance
""

function! s:PlugEnhance () abort

	" Add extra plugin here
	" ## https://github.com/scrooloose/nerdtree
	"Plug 'scrooloose/nerdtree'





endfunction

""
""" Tail: PlugEnhance
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: PlugFcitx
""

function! s:PlugFcitx () abort

	" ## https://github.com/lilydjwg/fcitx.vim
	Plug 'lilydjwg/fcitx.vim'

	" :help 'ttimeoutlen'
	set ttimeoutlen=100


endfunction

""
""" Tail: PlugFcitx
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: PlugMvim
""

function! s:PlugMvim () abort

	" ## WhichKey
	" https://www.jianshu.com/p/e47f7ec27cea
	" https://github.com/liuchengxu/vim-which-key

	"Plug 'liuchengxu/vim-which-key'
	" On-demand lazy load
	Plug 'liuchengxu/vim-which-key', { 'on': ['WhichKey', 'WhichKey!'] }
	" To register the descriptions when using the on-demand load feature, use the autocmd hook to call which#register(),
	" e.g., register for the Space key(see more configuration details in the following sections):
	" autocmd! User vim-which-key call which#register('<Space>', 'g:which_key_map')


	" ## eleline
	" https://github.com/liuchengxu/eleline.vim
	Plug 'liuchengxu/eleline.vim'


	" ## Mvim
	" https://github.com/samwhelp/tool-svim-core
	Plug 'samwhelp/tool-svim-core'

	" https://github.com/samwhelp/tool-svim-colorfit
	Plug 'samwhelp/tool-svim-colorfit'

	" https://github.com/samwhelp/tool-mvim-core
	Plug 'samwhelp/tool-mvim-core'




endfunction

""
""" Tail: PlugMvim
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""




""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: PluginManager
""

function! s:PluginManager (dir_path) abort

	" :help internal-variables

	let l:site_rtp_dir_path = '~/.cache/mvim/site'
	"let &runtimepath .= ',' . l:site_rtp_dir_path
	let &runtimepath = l:site_rtp_dir_path . ',' . &runtimepath


	try
		" https://github.com/junegunn/vim-plug/
		" Specify a directory for plugins
		" - For Neovim: ~/.local/share/nvim/plugged
		" - Avoid using standard Vim directory names like 'plugin'
		call plug#begin(a:dir_path)
	catch
		echomsg ' '
		echomsg '+NotInstall: https://github.com/junegunn/vim-plug/'
		echomsg '    # Please install first:'
		echomsg '$ curl -fLo ~/.cache/mvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
		return
	endtry

	call s:PlugEnhance()

	call s:PlugColorScheme()
	call s:PlugFcitx()
	call s:PlugMvim()

	" Initialize plugin system
	call plug#end()




endfunction

""
""" Tail: PluginManager
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""




""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: Main
""

function! s:Main () abort

	call s:PluginManager('~/.cache/mvim/plug')

	call s:ColorSchemeUse()

endfunction

call s:Main()

""
""" Tail: Main
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
