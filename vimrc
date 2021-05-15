


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: Base
""

set nocompatible

scriptencoding utf-8

""
""" Tail: Base
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: ColorSchemePick
""

function! s:ColorSchemePick () abort

	" ## background
	set background=dark
	"set background=light


	" ## pick colorscheme
	"colorscheme space_vim_theme
	"colorscheme monokai
	"colorscheme gruvbox
	colorscheme onedark


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


""
""" Tail: ColorSchemePick
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: ColorSchemePlug
""


function! s:ColorSchemePlug () abort

	" ## https://www.jianshu.com/p/aadce0fe9649
	" ## https://github.com/liuchengxu/space-vim-theme
	Plug 'liuchengxu/space-vim-theme'

	" ## https://github.com/sickill/vim-monokai
	Plug 'sickill/vim-monokai'

	" ## https://github.com/morhetz/gruvbox
	Plug 'morhetz/gruvbox'

	" ## https://github.com/joshdick/onedark.vim
	Plug 'joshdick/onedark.vim'

endfunction

""
""" Tail: ColorSchemePlug
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
""" Head: ConfEnhance
""

function! s:ConfEnhance () abort



endfunction

""
""" Tail: ConfEnhance
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: PlugEdit_BetterWhitespace
""

function! s:PlugEdit_BetterWhitespace () abort

	" ## https://github.com/ntpeters/vim-better-whitespace
	Plug 'Ntpeters/vim-better-whitespace'

endfunction

""
""" Tail: PlugEdit_BetterWhitespace
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: ConfEdit_BetterWhitespace
""

function! s:ConfEdit_BetterWhitespace () abort

	let g:better_whitespace_enabled=1
	let g:strip_whitespace_on_save=1
	let g:strip_whitespace_confirm=0
	let g:better_whitespace_ctermcolor='132'
	"let g:better_whitespace_ctermcolor='222'
	"https://github.com/ntpeters/vim-better-whitespace
	"https://github.com/morhetz/gruvbox

endfunction

""
""" Tail: ConfEdit_BetterWhitespace
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: PlugEleLine
""

function! s:PlugEleLine () abort

	" ## eleline
	" https://github.com/liuchengxu/eleline.vim
	Plug 'liuchengxu/eleline.vim'


endfunction

""
""" Tail: PlugEleLine
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: ConfEleLine
""

function! s:ConfEleLine () abort




endfunction

""
""" Tail: ConfEleLine
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: PlugFcitx
""

function! s:PlugFcitx () abort

	" ## https://github.com/lilydjwg/fcitx.vim
	"Plug 'lilydjwg/fcitx.vim'
	Plug 'lilydjwg/fcitx.vim', { 'branch': 'fcitx4' }


endfunction

""
""" Tail: PlugFcitx
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: ConfFcitx
""

function! s:ConfFcitx () abort

	" :help 'ttimeoutlen'
	set ttimeoutlen=100


endfunction

""
""" Tail: ConfFcitx
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: PlugFm_Lf
""

function! s:PlugFm_Lf () abort

	" ## lf.vim
	" https://github.com/gokcehan/lf
	" https://github.com/ptzz/lf.vim
	" https://github.com/francoiscabrol/ranger.vim
	" https://github.com/rbgrouleff/bclose.vim
	Plug 'ptzz/lf.vim'
	"Plug 'rbgrouleff/bclose.vim'

	"if has('nvim')
	"	Plug 'rbgrouleff/bclose.vim'
	"	Plug 'voldikss/vim-floaterm'
	"endif

	Plug 'rbgrouleff/bclose.vim'
	Plug 'voldikss/vim-floaterm'

	" Notice
	" Install lf first
	" https://github.com/gokcehan/lf/releases


	" Or Use
	" https://github.com/gokcehan/lf/blob/master/etc/lf.vim

endfunction

""
""" Tail: PlugFm_Lf
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: ConfFm_Lf
""

function! s:ConfFm_Lf () abort

	nnoremap <Space>el :Lf<CR>
	nnoremap ,f :Lf<CR>


endfunction

""
""" Tail: ConfFm_Lf
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: PlugFm_Ranger
""

function! s:PlugFm_Ranger () abort

	" ## ranger.vim
	" https://ranger.github.io/
	" https://github.com/ranger/ranger
	" https://github.com/francoiscabrol/ranger.vim
	Plug 'francoiscabrol/ranger.vim'

	if has('nvim')
		Plug 'rbgrouleff/bclose.vim'
	endif

	" Notice
	" Install ranger first
	" $ sudo apt-get install ranger

endfunction

""
""" Tail: PlugFm_Ranger
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: ConfFm_Ranger
""

function! s:ConfFm_Ranger () abort


	nnoremap <Space>er :Ranger<CR>
	"nnoremap ,f :Ranger<CR>


endfunction

""
""" Tail: ConfFm_Ranger
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: PlugMvim
""

function! s:PlugMvim () abort

	" ## Mvim
	" https://github.com/samwhelp/tool-svim-core
	Plug 'samwhelp/tool-svim-core'

	" https://github.com/samwhelp/tool-svim-colorfit
	Plug 'samwhelp/tool-svim-colorfit'

	" https://github.com/samwhelp/tool-svim-core-enhance
	Plug 'samwhelp/tool-svim-core-enhance'

	" https://github.com/samwhelp/tool-mvim-core
	"Plug 'samwhelp/tool-mvim-core'

endfunction

""
""" Tail: PlugMvim
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: ConfMvim
""

function! s:ConfMvim () abort



endfunction

""
""" Tail: ConfMvim
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: PlugNerdTree
""

function! s:PlugNerdTree () abort

	" ## https://github.com/scrooloose/nerdtree
	Plug 'scrooloose/nerdtree'


endfunction

""
""" Tail: PlugNerdTree
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: ConfNerdTree
""

function! s:ConfNerdTree () abort

	nnoremap ,t :NERDTreeToggle<CR>
	nnoremap <Space>et :NERDTreeToggle<CR>

endfunction

""
""" Tail: ConfNerdTree
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: PlugWhichKey
""

function! s:PlugWhichKey () abort

	" ## WhichKey
	" https://www.jianshu.com/p/e47f7ec27cea
	" https://github.com/liuchengxu/vim-which-key

	Plug 'liuchengxu/vim-which-key'
	" On-demand lazy load
	"Plug 'liuchengxu/vim-which-key', { 'on': ['WhichKey', 'WhichKey!'] }
	" To register the descriptions when using the on-demand load feature, use the autocmd hook to call which#register(),
	" e.g., register for the Space key(see more configuration details in the following sections):
	" autocmd! User vim-which-key call which#register('<Space>', 'g:which_key_map')


endfunction

""
""" Tail: PlugWhichKey
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: ConfWhichKey
""

function! s:ConfWhichKey () abort

	" https://www.jianshu.com/p/e47f7ec27cea
	" https://github.com/liuchengxu/space-vim-theme

	" ## WhichKey Show
	nnoremap <silent> , :<c-u>WhichKey  ','<CR>
	nnoremap <silent> t :<c-u>WhichKey  't'<CR>
	nnoremap <silent> <Bslash> :<c-u>WhichKey  '<Bslash>'<CR>
	nnoremap <silent> <Space> :<c-u>WhichKey  '<Space>'<CR>


endfunction

""
""" Tail: ConfWhichKey
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: PackPlugBase
""

function! s:PackPlugBase () abort

	call s:PlugEdit_BetterWhitespace()
	call s:PlugEleLine()
	call s:PlugFcitx()
	call s:PlugFm_Lf()
	call s:PlugFm_Ranger()
	call s:PlugMvim()
	call s:PlugNerdTree()
	call s:PlugWhichKey()

endfunction

""
""" Tail: PackPlugBase
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: PackConfBase
""

function! s:PackConfBase () abort

	call s:ConfEdit_BetterWhitespace()
	call s:ConfEleLine()
	call s:ConfFcitx()
	call s:ConfFm_Lf()
	call s:ConfFm_Ranger()
	call s:ConfMvim()
	call s:ConfNerdTree()
	call s:ConfWhichKey()

endfunction

""
""" Tail: PackConfBase
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: ConfigInControl
""

function! s:ConfigInControl () abort

	call s:PackConfBase()
	call s:ConfEnhance()

endfunction


""
""" Tail: ConfigInControl
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: PluginInControl
""

function! s:PluginInControl () abort

	call s:PackPlugBase()
	call s:PlugEnhance()

	call s:ColorSchemePlug()

endfunction


""
""" Tail: PluginInControl
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

	call s:PluginInControl()

	" Initialize plugin system
	call plug#end()

endfunction

""
""" Tail: PluginManager
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: ColorSchemeUse
""


function! s:ColorSchemeUse () abort

	try
		call s:ColorSchemePick()
	catch
		" echomsg ' '
		" echomsg '+NotInstall ColorScheme:'
		" echomsg '    # Please install first:'
		" echomsg ':PlugInstall'

		echohl WarningMsg
		echomsg 'ColorScheme is not installed! Please run :PlugInstall'
		echohl None

		return
	endtry

endfunction


function! s:ColorSchemeUseOnVimEnter() abort

	augroup ColorSchemeUse
		autocmd!
		autocmd VimEnter * call s:ColorSchemeUse()
	augroup END

endfunction


""
""" Tail: ColorSchemeUse
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: Main
""

function! s:Main () abort

	call s:PluginManager('~/.cache/mvim/plug')

	call s:ColorSchemeUse()

	"call s:ColorSchemeUseOnVimEnter()

	call s:ConfigInControl()

endfunction

call s:Main()

""
""" Tail: Main
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: Note
""


" $ vim -nNRe -u vimrc -c 'try | :PlugInstall | endtry'
" $ vim -nNRe -u vimrc -c 'try | :PlugInstall | finally | :qa! | endtry'
" $ vim -nNRe -u vimrc -c 'try | :PlugInstall | catch | echomsg "!PlugInstall Error!" | finally | :qa! | endtry'
" $ vim -nNRe -u vim-plug-install.vim

" function! s:TryInstallPlugin () abort
" 	try
" 		PlugInstall
" 	catch
" 		echomsg '!PlugInstall Error!'
" 	finally
" 		qa!
" 	endtry
" endfunction


""
""" Tail: Note
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

