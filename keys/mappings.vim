" Better nav for omnicomplete
inoremap <expr> <c-j> ("\<C-n>")
inoremap <expr> <c-k> ("\<C-p>")

" Resize windows using ctr+Alt+(arrow keys)
nnoremap <C-M-k>    :resize -2<CR>
nnoremap <C-M-j>    :resize +2<CR>
nnoremap <C-M-l>    :vertical resize -2<CR>
nnoremap <C-M-h>    :vertical resize +2<CR>

" easy way to add line breaks
" nnoremap o o<ESC>
" nnoremap <S-o> <S-o><ESC>

" alternative' way to go to normal mode
inoremap <C-j> <ESC>
vnoremap <C-j> <ESC>

" Easy CAPS
" Make the work that the cursor is currently in insert and normal to toggle
" case
inoremap <F3> <ESC>viw~i
nnoremap <F3> viw~<Esc>
" Use F3 to toggle case for the selected text
vnoremap <F3> ~

" Copy words
inoremap <C-c> <ESC>viwyi
nnoremap <C-c> viwy<ESC>
" Copy in visual mode with Ctr+c
vnoremap <C-c> y

" quote and unquote
nnoremap ' ciw''<ESC>Pb
nnoremap " ciw""<ESC>Pb
vnoremap ' c''<ESC>P
vnoremap " c""<ESC>P

" remove qote of the current word
nnoremap <leader>' di'pbdb
nnoremap <leader>" di"pbdb

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

 
" nnoremap <Leader>o o<Esc>^Da
" nnoremap <Leader>O O<Esc>^Da

" Close buffer
" nmap <C-M-d> <Plug>Kwbd
nmap <C-M-d> :BufferClose<CR>
nmap <C-M-c> :BufferCloseAllButCurrent<CR>

" comment
nmap <C-]> <Plug>NERDCommenterToggle
vmap <C-]> <Plug>NERDCommenterToggle<CR>gv

" signify and Git shortcuts also in modules/signify.vim
nnoremap <leader>gg :SignifyHunkDiff<CR>
nnoremap <leader>ge :Gdiffsplit<CR>
nnoremap <leader>gv :GV<CR>
" nnoremap <leader>g :SignifyToggle<CR>
" vnoremap <leader>g :SignifyToggle<CR>

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

" Formating
xmap <leader>h  <Plug>(coc-format-selected)
nmap <leader>h  <Plug>(coc-format-selected)

if has('win32') || has('win64')
  nmap <C-M-n> :split<CR>:resize 5<CR>:terminal powershell.exe<CR>i
endif
if has("unix") || has('wsl')
  nmap <C-M-n> :split<CR>:resize 5<CR>:terminal<CR>i
endif

" close terminal with ESC
tnoremap <Esc> <C-\><C-n>
tnoremap <Esc><Esc> <C-\><C-n>:q<CR>

" Tggle the Tagbar that show the tags of current file (classes, functions,
" variables)
nnoremap <leader>; :TagbarToggle<cr>
" Git Message
" nmap <Leader>gm <Plug>(git-messenger)
