fun! Figlet()
	lua for k in pairs(package.loaded) do if k:match("^figlet") then package.loaded[k] = nil end end
	lua require("figlet").openConfig()
endfun
augroup Figlet
autocmd!
" -- Main Command-----------------------------------------------------------------------------------
command! -nargs=1 Fig lua require'figlet'.Fig(<f-args>)

" --------------------------------------------------------------------------------------------------
command! OpenConfig lua require'figlet'.openConfig()
command! OpenTerminal lua require'figlet'.openTerminal()
command! OpenWindow lua require'figlet'.openWindow()
augroup END
