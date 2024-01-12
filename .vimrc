
"███    ███ ██    ██        ██    ██ ██ ██████  ███    ███  ██████ 
"████  ████  ██  ██         ██    ██ ██ ██   ██ ████  ████ ██      
"██ ████ ██   ████          ██    ██ ██ ██████  ██ ████ ██ ██      
"██  ██  ██    ██            ██  ██  ██ ██   ██ ██  ██  ██ ██      
"██      ██    ██        ██   ████   ██ ██   ██ ██      ██  ██████ 
"
syntax on
set mouse=a
set clipboard=unnamedplus
"set t_Co=256
set termguicolors
set signcolumn=yes
set updatetime=100
set encoding=utf-8
set cursorline
set number
set relativenumber
set noshowmode
set background=dark
set numberwidth=4 
" Identation 
set shiftwidth=4
set tabstop=4
set autoindent
set expandtab
filetype indent on
"Searching
set hlsearch
set incsearch
set ignorecase
set smartcase
so ~/.vim/plugins.vim
so ~/.vim/maps.vim
so ~/.vim/snippets.vim
so ~/.vim/autocomplete.vim
so ~/.vim/compilerC.vim
" Theme for vim airline
let g:airline_theme='supernova'
" Theme for vim
colorscheme ayu 
let ayucolor="dark" 
" Enable powerline
let g:airline_powerline_fonts = 1 
" Tab for emmet in normal mode Important!! As well.
"let g:user_emmet_expandabbr_key = '<tab>'
"Tab for emmet in insert mode 
imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")
" Disable section warning equal trailing
let g:airline_section_warning='' 
" Disable section errors
let g:airline_section_error='' 
"Change when i am mode insert the cursor a beam
"Section z vim-airline
"let g:airline_section_z = '%3p%% %2s%=🍑 %l 󰍜 %c 🍓 %L'
"Customization indentline plugin
let g:indentLine_char =  '▏' 
let g:indentLine_color_term = 2
"Separator between windows
set fillchars=vert:▏
" Cambia el color de los numeros de la linea del cursor 
highlight CursorLineNr cterm=bold ctermfg=4 
" Cambia el color de la linea vertical que divide las ventanas ctermfg:
" funciona para linea delgada y ctermbg: funciona para la linea gruesa
highlight VertSplit ctermfg=10
" Cambia el color de resaltado de la linea descomentar si quiere ver el efecto
"highlight CursorLine ctermbg=DarkGrey ctermfg=black
highlight LineNR ctermfg=red ctermbg=132661 
"change background of vim
highlight Normal ctermbg=111216 ctermfg=white
let &t_SI = "\033]12;#ff0000\e[6 q"
let &t_EI = "\033]12;#ff00ff\e[2 q"

" --------------------------------------------------------------------------------------------------------------CONFIG VIM-AIRLINE-----------------------------------------------------------------------------------------------------
"  theme vim-airline
let g:airline_theme='supernova'
" fonts para la linea
let g:airline_powerline_fonts = 1 
" disbale section warning
let g:airline_section_warning='' 
" ascii symbols
let g:airline_symbols_ascii = 1
" disable section errors
let g:airline_section_error='' 
call airline#parts#define_accent('%l:%c', 'bold')
call airline#parts#define_accent('%p%%', 'bold')
call airline#parts#define_accent('%L', 'bold')
let g:airline_section_z = airline#section#create_right(['%p%%', '%l:%c','%L'])
function! AirlineInit()
      let g:airline_section_a = airline#section#create(['mode'])
      let g:airline_section_b = airline#section#create(['branch'])
      "file=NombreDelArchivo  getcwd=RutaDelArchivo strftime=ImprimeFechaYHora
      let g:airline_section_c= airline#section#create_left(['file', '%{getcwd()}', '%{strftime("%d/%m/%Y")}','%{toupper(strftime("%H:%H %p"))}', 'Hello World Isaac'])
      let g:airline_section_z = airline#section#create_right(['%p%%', '%l:%c','%L'])
endfunction
autocmd User AirlineAfterInit call AirlineInit()
"let g:airline_mode_map = {'n' : 'NORMAL', 'i': 'INSERT', 'v': 'VISUAL'}
" --------------------------------------------------------------------------------------------------------------CONFIG VIM-AIRLINE-----------------------------------------------------------------------------------------------------
