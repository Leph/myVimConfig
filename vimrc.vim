"""
""" VIMRC PERSO
""" Quentin ROUXEL
"""

" Encodage et saut de ligne
set fileformat=unix
set encoding=utf-8

" Compatibilité avec Debian
" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
" Adds automatically 'set nocompatible' option.
runtime! debian.vim

" 256 coleurs
set t_Co=256

" Transformation des tabulations en espaces
set expandtab
" Nombre d'espace par tabulation
set softtabstop=4
" Nombre d'espace de l'indentation
set shiftwidth=4

" Indentation automatique
set autoindent      "Keep indentation from previous line
set smartindent     "Automatically inserts indentation in some cases
set cindent         "Like smartindent, but stricter and more customisable
" Configuration de l'indentation
" + et ( pour décalage de 1 tab et pas deux lors du
" saut de ligne de parenthèse ouvrante
" m pour le décalage de la parenthèse fermante
" (http://vimdoc.sourceforge.net/htmldoc/indent.html#cinoptions-values)
set cinoptions=+1s,(1s,m1

" Indentation en fonction du type de fichier
filetype plugin indent on
autocmd filetype python set expandtab

" Numéros de ligne
set number

" Coloration syntaxique
syn on

" Autre commandes utiles
set showcmd         " Show (partial) command in status line.
set showmatch       " Show matching brackets.
set ignorecase      " Do case insensitive matching
set smartcase       " Do smart case matching
set incsearch       " Incremental search
set autowrite       " Automatically save before commands like :next and :make
set hidden          " Hide buffers when they are abandoned
set hlsearch        " highlight search terms
set history=1000    " remember more commands and search history
set undolevels=1000 " use many muchos levels of undo
set title           " change the terminal's title

" Désactive les fichiers de backup après la fermeture de vim
set nobackup
"set nowritebackup (backup pendant l'édition)
"set noswapfile (ne pas activer si gros fichier)

" Theme dans ~/.vim/colors/
"colorscheme darkspectrum
colorscheme desert

let python_highlight_builtins=1

" Map
nmap <C-t> :tabnew<CR>
nmap <C-d> :tabclose<CR>
nmap <S-Tab> :tabnext<CR>

" Active ma sourie
set mouse=a

" Avec le plugin miniBufExpl : control + fleche change de buffer
let g:miniBufExplMapWindowNavArrows = 1
" Sélection avec un click simple
let g:miniBufExplUseSingleClick = 1

" Nombre minimum de ligne avant et après le curseur
set scrolloff=3

" plugin taglist
nnoremap <silent> <F8> :TlistToggle<CR>
let Tlist_Enable_Fold_Column=0
let Tlist_Sort_Type='name'
"let Tlist_Display_Prototype=1
let Tlist_Display_Tag_Scope=1
let Tlist_Compact_Format=1
let tlist_php_settings='php;f:function'
let Tlist_Use_Right_Window=1

" Twig syntax higthlighting
au BufRead,BufNewFile *.twig setfiletype htmldjango

" Indentation guideline
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=white ctermbg=233
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=white ctermbg=234
let g:indent_guides_guide_size = 1
let g:indent_guides_start_level = 2
let g:indent_guides_enable_on_vim_startup = 1

" NERDTree plugin
let g:NERDTreeShowBookmarks = 1
