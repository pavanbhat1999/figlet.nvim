fun! FirstPlugin()
	lua for k in pairs(package.loaded) do if k:match("^firstPlugin") then package.loaded[k] = nil end end
	lua require("firstPlugin").openConfig()
endfun
augroup FirstPlugin
autocmd!
command! OpenConfig lua require'firstPlugin'.openConfig()
command! OpenTerminal lua require'firstPlugin'.openTerminal()
command! OpenWindow lua require'firstPlugin'.openWindow()
command! -nargs=1 Fig lua require'firstPlugin'.Fig(<f-args>)
augroup END
