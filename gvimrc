set guioptions-=m       " Disable menubar
set guioptions-=T       " Disable toolbar
set guioptions-=t       " Disable tearoff menu items
set guioptions-=r       " Disable right-hand scrollbar
set guioptions-=L       " Disable left-hand scrollbar
set guioptions-=e       " No guitablabel
set guioptions+=c       " Use console dialogs instead of popup dialogs for simple choices

set linespace=2         " Add some line space for easy reading
set lines=40 columns=120

if has('gui_macvim')
    set invmmta         " Make Mac's Option key behave as the Meta key
    set antialias

    set lines=999 columns=999
    set guifont=Source\ Code\ Pro:h14,Monaco:h14

    if has('transparency') || exists('+transparency')
        set transparency=2
    endif

    xnoremap <silent> <D-c> "+y
    xnoremap <silent> <D-x> "+d
    nnoremap <silent> <D-v> :set paste<CR>"+gP:set nopaste<CR>
    inoremap <silent> <D-v> <C-G>u<C-O>"+gP
elseif has('gui_gnome') || has('gui_gtk')
    set guifont=Source\ Code\ Pro\ 9,Ubuntu\ Mono\ 11,Monospace\ 12
elseif has('gui_win32') || has('gui_win64')
    set guifont=Consolas:h12,Andale_Mono:h12,Courier_New:h10
endif

inoremap <Esc> <Esc>
