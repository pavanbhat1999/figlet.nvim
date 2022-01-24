fun! Figlet()
	lua for k in pairs(package.loaded) do if k:match("^figlet") then package.loaded[k] = nil end end
	lua require('figlet').GetLines()
endfun
augroup Figlet
autocmd!
augroup END
if exists('g:loaded_figlet') | finish | endif " prevent loading file twice

let s:save_cpo = &cpo " save user coptions
set cpo&vim " reset them to defaults

command! -nargs=1 Fig lua require'figlet'.Fig(<f-args>)
command! -nargs=1 FigComment lua require'figlet'.FigComment(<f-args>)
command! FigList lua require'figlet'.FigList()
command! FigSelect lua require'figlet'.FigSelect()
command! FigSelectComment lua require'figlet'.FigSelectComment()

let &cpo = s:save_cpo " and restore after
unlet s:save_cpo

let g:loaded_figlet = 1
