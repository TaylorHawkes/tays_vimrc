"tay run :so% to source vimrc
<<<<<<< HEAD
"this is for git change
=======
>>>>>>> 52e654d377e4e105f6f163be939a604d6e75a202
colorscheme darkblue
syntax on


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
set backspace=eol,start,indent
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent
set smarttab


"set leader
let mapleader = ","


"moving betweend windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

"remember my undo history
set undofile                " Save undo's after file closes
set undodir=$HOME/.vim/undo " where to save undo histories
set undolevels=1000         " How many undos
set undoreload=10000        " number of lines to save for undo

"html mappings
"map jj :echo 'Current time is ' . strftime('%c')<CR> 
"not sure about this?
inoremap jk <Esc>:w<cr>


" Toggle paste mode on and off
map <leader>pp :setlocal paste!<cr>
map <leader>ff :call FixChars()<cr>


"inoremap div -- <cr><div><cr>steve@stevelosh.com
"inoremap ssig -- <cr>Steve Losh<cr>steve@stevelosh.com

inoreabbrev doctype, <!DOCTYPE html><cr>
inoreabbrev html, <html><cr></html><ESC>ko
inoreabbrev body, <body><cr></body><ESC>ko
inoreabbrev form, <form id="%"><cr></form><ESC>ko<ESC>kf%s<c-o>:call getchar()<CR>
inoreabbrev ul, <ul><cr></ul><ESC>ko
inoreabbrev style, <style><cr></style><ESC>ko
inoreabbrev head, <head><cr></head><ESC>ko
inoreabbrev table, <table><cr></table><ESC>ko
inoreabbrev tr, <tr><cr></tr><ESC>ko
inoreabbrev radio, <input type="radio" name="as" value="as">as<br><cr><input type="radio" name="as" value="as">as<ESC>ko

inoreabbrev title, <title>%</title><Esc>F%s<c-o>:call getchar()<CR>
inoreabbrev h1, <h1>%</h1><Esc>F%s<c-o>:call getchar()<CR>
inoreabbrev h2, <h2>%</h2><Esc>F%s<c-o>:call getchar()<CR>
inoreabbrev h3, <h3>%</h3><Esc>F%s<c-o>:call getchar()<CR>
inoreabbrev h4, <h4>%</h4><Esc>F%s<c-o>:call getchar()<CR>
inoreabbrev h5, <h5>%</h5><Esc>F%s<c-o>:call getchar()<CR>
inoreabbrev div, <div>%</div><Esc>F%s<c-o>:call getchar()<CR>
inoreabbrev li, <li>%</li><Esc>F%s<c-o>:call getchar()<CR>
inoreabbrev td, <td>%</td><Esc>F%s<c-o>:call getchar()<CR>
inoreabbrev br, <br/>

inoreabbrev textarea, <textarea>%</textarea><Esc>F%s<c-o>:call getchar()<CR>

inoreabbrev label, <label for="%">asdf</label><Esc>F%s<c-o>:call getchar()<CR>
inoreabbrev a, <a href="%"></a><Esc>F%s<c-o>:call getchar()<CR>
inoreabbrev p, <p>%</p><Esc>F%s<c-o>:call getchar()<CR>
inoreabbrev st, style="%"<Esc>F%s<c-o>:call getchar()<CR>
inoreabbrev img, <img src="%"><Esc>F%s<c-o>:call getchar()<CR>
inoreabbrev input, <input type="%" name="asdf" id="asdf"><Esc>F%s<c-o>:call getchar()<CR>
inoreabbrev css, <link rel="stylesheet" type="text/css" href="%" ><Esc>F%s<c-o>:call getchar()<CR>
inoreabbrev script, <script type="text/javascript" src="%"></script><Esc>F%s<c-o>:call getchar()<CR>
inoreabbrev sript, <script type="text/javascript" src="%"></script><Esc>F%s<c-o>:call getchar()<CR>
inoreabbrev sritp, <script type="text/javascript" src="%"></script><Esc>F%s<c-o>:call getchar()<CR>
inoreabbrev srip, <script type="text/javascript" src="%"></script><Esc>F%s<c-o>:call getchar()<CR>
inoreabbrev scrip, <script type="text/javascript" src="%"></script><Esc>F%s<c-o>:call getchar()<CR>


"php abreviations
inoreabbrev foreach, foreach(%){<cr>}<ESC>ko<ESC>kf%s<c-o>:call getchar()<CR>
inoreabbrev forech, foreach(%){<cr>}<ESC>ko<ESC>kf%s<c-o>:call getchar()<CR>
inoreabbrev foerch, foreach(%){<cr>}<ESC>ko<ESC>kf%s<c-o>:call getchar()<CR>
inoreabbrev foech, foreach(%){<cr>}<ESC>ko<ESC>kf%s<c-o>:call getchar()<CR>
inoreabbrev foechc, foreach(%){<cr>}<ESC>ko<ESC>kf%s<c-o>:call getchar()<CR>

inoreabbrev php, <?php<cr>?><ESC>ko

inoreabbrev ph, <?=$% ;?><Esc>F%s<c-o>:call getchar()<CR>
inoreabbrev pr, print_r($%)<Esc>F%s<c-o>:call getchar()<CR>

inoreabbrev func, function %(){<cr>}<ESC>ko<ESC>kf%s<c-o>:call getchar()<CR>
inoreabbrev pfunc, public function %(){<cr>}<ESC>ko<ESC>kf%s<c-o>:call getchar()<CR>

"jkj abbrecationss




inoreabbrev ready, $(document).ready(function(){<cr>});<ESC>ko
inoreabbrev jq, $('%').on('asdf','asdf',function(){<CR>});<Esc>kf%s<c-o>:call getchar()<CR>


"spelling corrections"
inoreabbrev marign margin
inoreabbrev marin margin
inoreabbrev magin margin



"maping surowindg stuff
inoremap ( ()<Esc>i
inoremap [ []<Esc>i
inoremap { {<CR>}<Esc>ko
inoremap " ""<Esc>i
inoremap ' ''<Esc>i

vnoremap li <Esc>:call GetVisualSelection("li") <CR>
vnoremap a <Esc>:call GetVisualSelection("a") <CR>

"function for wrapping"
function! GetVisualSelection(surround)


  " Why is this not a built-in Vim script function?!
 let [lnum1, col1] = getpos("'<")[1:2]
 let [lnum2, col2] = getpos("'>")[1:2]


  let lines = getline(lnum1, lnum2)
 "  let lines[-1] = lines[-1][: col2 - (&selection == 'inclusive' ? 1 : 2)]
    ""  let lines[0] = lines[0][col1 - 1:]
    for n in lines
      execute "normal o<".a:surround.">".Trim(n)."</".a:surround.">\<Esc>" 
    endfor

  execute  lnum1.",".lnum2." d"

endfunction

function! Trim(input_string)
    return substitute(a:input_string, '^\s*\(.\{-}\)\s*$', '\1', '')
endfunction


function! FixChars() 
  execute ":%s/“/\"/g"
  execute ":%s/”/\"/g"
  execute ":%s/’/'/g"
  execute ":%s/…/.../g"
  execute ":%s/-/-/g"
endfunctio


