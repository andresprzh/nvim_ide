" Better nav for omnicomplete
inoremap <expr> <c-j> ("\<C-n>")
inoremap <expr> <c-k> ("\<C-p>")

" Resize windows using ctr+Alt+(arrow keys)
nnoremap <C-M-Up>    :resize -2<CR>
nnoremap <C-M-Down>    :resize +2<CR>
nnoremap <C-M-Right>    :vertical resize -2<CR>
nnoremap <C-M-Left>    :vertical resize +2<CR>

" Easy CAPS
inoremap <S-F3> <ESC>viw~i
nnoremap <S-F3> viw~<Esc>

" Copy words
inoremap <C-c> <ESC>viwyi
nnoremap <C-c> viwy<ESC>
" Copy in visual mode with Ctr+c
vnoremap <C-c> y

" TAB in general mode will move to text buffer
nnoremap <TAB> :bnext<CR>
" SHIFT-TAB will go back
nnoremap <S-TAB> :bprevious<CR>

" Alternate way to save
nnoremap <C-s> :w<CR>
inoremap <C-s> <ESC>:w<CR>
vnoremap <C-s> <ESC>:w<CR>
nnoremap <C-q> :q<CR>
" <TAB>: completion.
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

" Better tabbing
vnoremap < <gv
vnoremap > >gv

" Better window navigation use ctr+shift+(arrow keys)
nnoremap <C-S-Left> <C-w>h
nnoremap <C-S-Up> <C-w>j
nnoremap <C-S-Down> <C-w>k
nnoremap <C-S-Right> <C-w>l

nnoremap <Leader>o o<Esc>^Da
nnoremap <Leader>O O<Esc>^Da

" Close buffer
nnoremap <C-d> :bd<CR>  

" Git Message
" nmap <Leader>gm <Plug>(git-messenger)