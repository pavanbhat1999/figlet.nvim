fun! Figlet()
	lua for k in pairs(package.loaded) do if k:match("^figlet") then package.loaded[k] = nil end end
endfun
" augroup Figlet
" autocmd!
" " -- Main Command-----------------------------------------------------------------------------------
" command! -nargs=1 Fig lua require'figlet'.Fig(<f-args>)
" command! -nargs=1 FigComment lua require'figlet'.FigComment(<f-args>)
" " --------------------------------------------------------------------------------------------------
" augroup END
