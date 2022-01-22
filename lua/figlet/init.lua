--Global Settings-----------------------------------------------------------------------------------
Font = "ANSI\\ Shadow"
---------------------------------------------------------------------------------------------------
local function openConfig()
	local file = "$HOME/.config/nvim/init.lua"
	vim.api.nvim_command("edit" .. file)
end
---------------------------------------------------------------------------------------------------
local function openTerminal()
	vim.api.nvim_command(":terminal")
end
---------------------------------------------------------------------------------------------------
local function Fig(arg1)
	vim.api.nvim_command(":read !figlet -f "..Font.." ".. arg1)
end
---------------------------------------------------------------------------------------------------
return {

	openConfig = openConfig,

	openTerminal = openTerminal,

	Fig = Fig,
}
