call pathogen#infect()

set nocompatible
set number
set tabstop=2
set shiftwidth=2
set softtabstop=2
set cindent
set completefunc=1
set tw=100
" use 256 colors in Console mode if we think the terminal supports it 
if &term =~? 'mlterm\|xterm' 
	set t_Co=256 
endif
set guifont=Inconsolata\ 18

filetype plugin indent on 
filetype plugin on
syntax on

" IMPORTANT: Uncomment one of the following lines to force
" using 256 colors (or 88 colors) if your terminal supports it,
" but does not automatically use 256 colors by default.
"set t_Co=256
"set t_Co=88
if (&t_Co == 256 || &t_Co == 88) && !has('gui_running')
  " Use the guicolorscheme plugin to makes 256-color or 88-color
  " terminal use GUI colors rather than cterm colors.
  runtime! plugin/guicolorscheme.vim
	GuiColorScheme darkspectrum
else
  " For 8-color 16-color terminals or for gvim, just use the
  " regular :colorscheme command.
	colorscheme darkspectrum
endif

"" FuzzyFinder.vim
nnoremap <Space>f f
nnoremap <Space>F F
nnoremap f <Nop>
nnoremap <silent> fb :<C-u>FufBuffer!<CR>
nnoremap <silent> ff :<C-u>FufFile! <C-r>=expand('%:~:.')[:-1-len(expand('%:~:.:t'))]<CR><CR>
nnoremap <silent> ,f :<C-u>FufFile! <CR>
nnoremap <silent> fm :<C-u>FufMruFile!<CR>
nnoremap <silent> tb :<C-u>tabnew<CR>:tabmove<CR>:FufBuffer!<CR>
nnoremap <silent> tf :<C-u>tabnew<CR>:tabmove<CR>:FufFile! <C-r>=expand('#:~:.')[:-1-len(expand('#:~:.:t'))]<CR><CR>
nnoremap <silent> ,tf :<C-u>tabnew<CR>:tabmove<CR>:FufFile! <CR>
nnoremap <silent> tm :<C-u>tabnew<CR>:tabmove<CR>:FufMruFile!<CR> 
