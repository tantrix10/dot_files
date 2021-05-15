                                                                       
set nocompatible              " required                                           
filetype off                  " required                                           
" set the runtime path to include Vundle and initialize                            
                                                                                   
set rtp+=~/.vim/bundle/Vundle.vim                                                  
set tabstop=4                                                                      
set softtabstop=4                                                                  
set shiftwidth=4                                                                   
set textwidth=79                                                                   
set expandtab                                                                      
set autoindent                                                                     
set hidden                                                                         
set noerrorbells                                                                   
set nowrap                                                                         
set ignorecase                                                                     
set smartcase                                                                      
set undodir=~/.vim/undodir                                                         
set undofile                                                                       
set noswapfile                                                                     
set nobackup                                                                       
set incsearch                                                                      
set scrolloff=6                                                                    
set colorcolumn=80                                                                 
set relativenumber                                                                 
set number                                                                         
set clipboard=unnamed                                                              
set shortmess=a                                                                    
                                                                                   
                                                                                   
call vundle#begin()                                                                
Plugin 'gmarik/Vundle.vim'                                                         
Plugin 'tmhedberg/SimpylFold'                                                      
Bundle 'Valloric/YouCompleteMe'                                                    
Plugin 'nvie/vim-flake8'                                                           
Plugin 'jnurmine/Zenburn'                                                          
Plugin 'altercation/vim-colors-solarized'                                          
Plugin 'scrooloose/nerdtree'                                                       
Plugin 'jistr/vim-nerdtree-tabs'                                                   
Plugin 'tpope/vim-fugitive'                                                        
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}                    
Plugin 'Vimjas/vim-python-pep8-indent'                                             
Plugin 'haishanh/night-owl.vim'                                                    
call vundle#end()                                                                  
                                                                                   
" required                                                                         
                                                                                   
let g:pymode_indent = 0                                                            
filetype plugin indent on                                                          
  au BufNewFile,BufRead *.py;                                                     
set splitright"split navigations                                                
nnoremap <C-J> <C-W><C-J>                                                       
nnoremap <C-K> <C-W><C-K>                                                       
nnoremap <C-L> <C-W><C-L>                                                       
nnoremap <C-H> <C-W><C-H>                                                       
" Enable folding                                                                
set foldmethod=indent                                                           
set foldlevel=99                                                                
                                                                                
" Enable folding with the spacebar                                              
nnoremap <space> za                                                             
set encoding=utf-8                                                              
let g:ycm_autoclose_preview_window_after_completion=1                           
                                                                                
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>                  
                                                                                
" Virtualenv support                                                            
let g:ycm_python_binary_path = 'python'                                         
                                                                                
let python_highlight_all=1                                                      
                                                                                
if has('gui_running')                                                           
  " set background=dark                                                         
  colorscheme solarized                                                         
else                                                                            
  colorscheme zenburn                                                           
endif                                                                           
colorscheme night-owl                                                           
"ignore files in NERDTree                                                       
set termguicolors                                                               
let NERDTreeIgnore=['\.pyc$', '\~$']                                            
map <C-n> :NERDTreeToggle<CR>                                                   
                                                                                
                                                                                
map term :below terminal ++rows=20 <C-Enter>                                    
                                                                                
set autoread                                                                    
set tags=./tags;/   
