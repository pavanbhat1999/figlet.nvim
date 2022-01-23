--Global Settings-----------------------------------------------------------------------------------
Font = "ANSI\\ Shadow"
local function Fig(arg1)
	vim.api.nvim_command(":read !figlet -f " .. Font .. " " .. arg1)
end

-- HACK: everything is hack here anyone can suggest a better way to do this
local function FigComment(arg1)
	vim.api.nvim_command(":read !figlet -f " .. Font .. " " .. arg1)
	require("Comment.api").toggle_linewise_op("line")
	vim.api.nvim_command("normal o")
	vim.api.nvim_command("normal x")
end

return {
	Fig = Fig,
	FigComment = FigComment,
}
