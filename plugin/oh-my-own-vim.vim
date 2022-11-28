" Title: My Own vim plugin
" Description: Learning how to create a plugin
" Last Change: 2022-11-28
" Maintainer: Tiago D Cipriano <https://github.com/TiagoTi/oh-my-own-vim>

" Prevents the plugin from being loaded multiple times.
" If the loaded variable exists, do nothing more.
" Otherwise, assign the loaded variable and continue running this instance of the plugin.
if exists("g:loaded_oh_my_own_vim")
    finish
endif
let g:loaded_oh_my_own_vim = 1

" Exposes the plugin's functions for use as commands in Vim.
command! -nargs=0 DisplayTime call oh-my-own-vim#DisplayTime()
command TesInPlug execute "!docker container ls"
map <F12> :TesInPlug<CR>