syntax enable
set background=dark
set termguicolors
syntax on
colorscheme dracula

let g:airline_theme='bubblegum'
let g:airline_powerline_fonts=1

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = 'ln'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.dirty='⚡'
let g:airline_symbols.colnr='col'"

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#hunks#enabled=0
let g:airline#extensions#hunks#coc_git = 1

"" Hiện file ẩn
let NERDTreeShowHidden=1

autocmd VimEnter * NERDTree | wincmd p
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * NERDTree | if argc() > 0 || exists("s:std_in") | wincmd p | endif

"" Mở cùng NERDTree cho tab mới, mặc định là mỗi tab sẽ mở 1 cái mới
autocmd BufWinEnter * silent NERDTreeMirror

"" Tự đóng NERDTree khi đóng tab, mặc định giữ lại NERDTree
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") 
      \ && b:NERDTree.isTabTree()) | q | endif

"" Tìm file đang mở trong thư mục bên NERDTree (mặc định không sync với nhau)
map <leader>r :NERDTreeFind<cr>
map <C-b> :NERDTreeToggle<CR>

"" Map phím tắt Ctrl + P
nnoremap <silent> <C-p> :Files<CR>

"" Tìm file trong project, nhưng bỏ mấy thư mục như node_modules ra, để tìm nhẹ hơn.
set wildmode=list:longest,list:full
set wildignore+=*.o,*.obj,.git,*.rbc,*.pyc,__pycache__
let $FZF_DEFAULT_COMMAND =  "find * -path '*/\.*' -prune -o -path '**/node_modules/**' -prune -o -path 'node_modules/**' -prune -o -path 'target/**' -prune -o -path 'dist/**' -prune -o  -type f -print -o -type l -print 2> /dev/null"

command! -bang -nargs=* Rg call fzf#vim#grep("rg --column --line-number --no-heading --color=always --smart-case ".shellescape(<q-args>), 1, {'options': '--delimiter : --nth 4..'}, <bang>0)

"" Map phím "\f" để tìm nội dung, tương tự như "Ctrl + Shift + F" trên VSCode nhé
nnoremap <silent> <Leader>f :Rg<CR>

