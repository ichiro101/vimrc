call pathogen#infect()

set nocompatible
set number
set tabstop=2
set shiftwidth=2
set softtabstop=2
set cindent
set completefunc=1
set tw=100
set guifont=Inconsolata\ 22
set t_Co=256

filetype plugin indent on 
filetype plugin on
syntax on
colorscheme darkspectrum

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
