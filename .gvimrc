" make vim incompatible with old school vi
set nocompatible

" enable syntax and plugins for netrw
syntax enable
filetype plugin on

" set tab to switch between tab
map <tab> :tabn<cr>
map - :Explore<cr>

iab rhs # Richard Hamel-Smith - !!datekJo#===================================================hi
iab teh the
iab hte the
 
" abbreviation to convert the keyword GRID to a CSS table inside a PHP file
autocmd FileType php iab grid <div class=\"grid\" style=\"width:100%\"><Tab><div class=\"gr\"><Tab><Tab><div class=\"gh\"></div><BS><BS></div><!-- end GR --><div class=\"gr\"><Tab><Tab><div class=\"gd\"></div><BS><BS></div><!-- end GR --><BS></div><!-- end GRID -->

" Vim v7.3 settings
if v:version >= 703
" " Mark ideal text width (set by textwidth)
   set colorcolumn=+1
   set textwidth=0
endif

"source ~/dwn/ScrollColor.vim
set background=dark
colorscheme flatland
"colorscheme wombat256i

set cursorline
set cursorcolumn
set autoindent

" Always expand tabs to spaces
"set expandtab
"set softtabstop=3
"set shiftwidth=3 " recommended: twiki needs an indent of exactly 3 for lists

"
" useful for programming - allows folding of indents
" invoke folding with zM
" open all folds with zR
" toggle an individual fold with za
setlocal foldmethod=indent
nnoremap <Space> za
vnoremap <Space> za

" useful for python, apparently the standard is 4 spaces for idents
au Filetype python setl et ts=4 sw=4 smartindent softtabstop=4

if has("gui_running")
   colorscheme h80
   set lines=34 columns=106
   set gfn=DejaVu\ Sans\ Mono\ 15
   set textwidth=0
   set syntax=markdown
endif

if did_filetype()       " filetype already set..
  finish                " ..don't do these checks
endif

"if getline(1) =~ '^%TOC'
if getline(1) =~ '^%TOC%'
  setfiletype twiki
  set syntax=markdown
endif

"" twiki needs 3 spaces to output unordered lists indentation
autocmd FileType twiki set tabstop=3 expandtab softtabstop=3 shiftwidth=3

" twiki - insert hyperlink in unordered list
autocmd FileType twiki map <F2> O   * [[][]]hhhi
autocmd FileType twiki inoremap <F2> O   * [[][]]hhhi
" twiki - wrap something in <del></de>
autocmd FileType twiki map <F3> i<strike>A</strike> 
autocmd FileType twiki inoremap <F3> i<strike>A</strike> 
" twiki - bracket something so it comes out in red
autocmd FileType twiki map <F4> i<font color=red>
autocmd FileType twiki inoremap <F4> i<font color=red>
autocmd FileType twiki map <F5> A</font>
autocmd FileType twiki inoremap <F5> A</font>

"https://en.wikibooks.org/wiki/Editing_Wikitext/Preformatted_Text

"for code snippets, etc. in Twiki
autocmd FileType twiki map <F6> I<details><summary><b>Click here for Code</b></summary><pre style="white-space:pre-wrap;border:1px solid lightgrey;background:black;color:#00FF00;font-weight:bold;">oI</pre></details>okki

autocmd FileType twiki inoremap <F6> I<details><summary><b>Click here for Code</b></summary><pre style="white-space:pre-wrap;border:1px solid lightgrey;background:black;color:#00FF00;font-weight:bold;">oI</pre></details>okki
"for emails, etc
"map <F7> I<pre style="white-space:pre-wrap;width:50%;border:1px solid lightgrey;background:ivory;color:blue;">oI</pre>okki
autocmd FileType twiki map <F7> <Esc>ebi*<Esc>ea*<Esc>
autocmd FileType twiki inoremap <F7> <Esc>ebi*<Esc>ea*<Esc>

" twiki - wrap word in asterisks to make it bold
autocmd FileType twiki map <F8> <Esc>I<font color=lightgrey>##</font><Esc>kO# 
autocmd FileType twiki inoremap <F8> <Esc>I<font color=lightgrey>##</font><Esc>kO# 

set ignorecase
" Use ^D to move cursor back one indent level

" Turn on syntax highlighting - adjust background command
" to your window background
if &t_Co > 1
   syntax enable
   set background=dark
endif

" Point to global tags file - set the 'twiki' environment
" variable to point to the 'twiki' directory above bin, lib, etc.
set tags=$twiki/tags

" Make tab-completion work more like bash
set wildmode=longest,list

" Flip cursor to matching parenthesis when you type closing paren
set showmatch

" Record search patterns and command history between invocations of vi
set viminfo=%,'50,\"100,:100,n~/.viminfo
" from root's .vimrc - trying it out
set modeline
"set wm=5


"set nobackup
"set winheight=999
"set winwidth=999

"tilde files are saved in this directory
set backupdir=~/.vim/backup

set laststatus=2

set statusline=%t       "tail of the filename
set statusline+=[%{strlen(&fenc)?&fenc:'none'}, "file encoding
set statusline+=%{&ff}] "file format
set statusline+=%h      "help file flag
set statusline+=%m      "modified flag
set statusline+=%r      "read only flag
set statusline+=%y      "filetype
set statusline+=%=      "left/right separator
set statusline+=%c,     "cursor column
set statusline+=%l/%L   "cursor line/total lines
set statusline+=\ %P    "percent through file

"nnoremap <C-H> :Hexmode<CR>
"inoremap <C-H> <Esc>:Hexmode<CR>
"vnoremap <C-H> :<C-U>Hexmode<CR>

set textwidth=0
colorscheme elda
"colorscheme detailed
set nonu
set   expandtab
set   smartindent
set   tabstop=3
set   softtabstop=3
set   shiftwidth=3

nnoremap _ f<Space>x~
set runtimepath^=~/.vim/bundle/ctrlp.vim

set textwidth=0
colorscheme gruvbox
colorscheme hemisu
cmap w!! w !sudo tee > /dev/null %<CR>
nnoremap <bs> <c-^>
