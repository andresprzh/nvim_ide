" Better nav for omnicomplete
inoremap <expr> <c-j> ("\<C-n>")
inoremap <expr> <c-k> ("\<C-p>")

" Resize windows using ctr+Alt+(arrow keys)
nnoremap <C-M-k>    :resize -2<CR>
nnoremap <C-M-j>    :resize +2<CR>
nnoremap <C-M-l>    :vertical resize -2<CR>
nnoremap <C-M-h>    :vertical resize +2<CR>

" easy way to add line breaks
nnoremap <S-o> o<ESC>

" Easy CAPS
inoremap <S-F3> <ESC>viw~i
nnoremap <S-F3> viw~<Esc>

" Copy words
inoremap <C-c> <ESC>viwyi
nnoremap <C-c> viwy<ESC>
" Copy in visual mode with Ctr+c
vnoremap <C-c> y

" quote and 
nnoremap ' ciw''<ESC>Pb
nnoremap " ciw""<ESC>Pb

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
nnoremap <C-S-Down> <C-w>j
nnoremap <C-S-Up> <C-w>k
nnoremap <C-S-Right> <C-w>l

nnoremap <Leader>o o<Esc>^Da
nnoremap <Leader>O O<Esc>^Da

" Close buffer
nmap <C-M-d> <Plug>Kwbd

" comment
nmap <C-]> <Plug>NERDCommenterToggle
vmap <C-]> <Plug>NERDCommenterToggle<CR>gv

" signify git toggle
nnoremap <leader>g :SignifyToggle<CR>
vnoremap <leader>g :SignifyToggle<CR>

" fuzzi search remaps
" map <C-p> :FZF<CR>
" map <C-M-f> :Files<CR>
" map <leader>b :Buffers<CR>
" nnoremap <leader>fg :Rg<CR>
" nnoremap <leader>ft :Tags<CR>


"" Telescope remaps
nnoremap <C-p> <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" 
nmap   <C-LeftMouse>         <Plug>(VM-Mouse-Cursor)
nmap   <C-RightMouse>        <Plug>(VM-Mouse-Word)  
nmap   <M-C-RightMouse>      <Plug>(VM-Mouse-Column)

if has('win32') || has('win64')
  nmap <C-n> :split<CR>:resize 5<CR>:terminal powershell.exe<CR>i
endif
if has("unix") || has('wsl')
  nmap <C-n> :split<CR>:resize 5<CR>:terminal<CR>i
endif

" close terminal with ESC
tnoremap <Esc> <C-\><C-n>
tnoremap <Esc><Esc> <C-\><C-n>:q<CR>

" Git Message
" nmap <Leader>gm <Plug>(git-messenger)
