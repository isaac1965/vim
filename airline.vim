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
call airline#parts#define_accent(' %L', 'bold')
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
