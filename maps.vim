let mapleader = " "
imap jj <ESC>
noremap <leader>w :w!<CR>
noremap <leader>q :q!<CR>
noremap <leader>wq :wq!<CR>
noremap <leader>pi :PlugInstall<CR>
noremap <leader>pc :PlugClean<CR>
noremap <leader>vc :VCoolor<CR> 
noremap <leader>r :VCoolIns r<CR>
noremap <leader>ra :VCoolIns ra<CR>
"split resize
nnoremap <Leader>, 10<C-w>>
nnoremap <Leader>. 10<C-w><

"Plugs
map <Leader>nt :NERDTreeFind<CR>
map <Leader>p :Files<CR>
map <Leader>ag :Ag<CR>
nmap <Leader>s <Plug>(easymotion-s2)

"tmux navigator
nnoremap <silent> <leader><C-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <leader><C-j> :TmuxNavigateDown<cr>
nnoremap <silent> <leader><C-k> :TmuxNavigateUp<cr>
nnoremap <silent> <leader><C-l> :TmuxNavigateRight<cr>

"tabs navigation
map <Leader>h :tabprevious<cr>
map <Leader>l :tabnext<cr>

"Buffers
map <Leader>ot :Buffers<cr>

"Faster scrolling
nnoremap <C-u> 10<C-e>
nnoremap <C-i> 10<C-y>
