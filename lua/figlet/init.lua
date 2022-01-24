--Global Settings-----------------------------------------------------------------------------------
-- Font = "ANSI\\ Shadow"
Font = "ANSI\\ Regular"
---------------------------------------------------------------------------------------------------
-- HACK: I feel everything is hack here anyone can suggest a better way to do this-------------------------
local function Fig(arg1)
	vim.api.nvim_command(":read !figlet -f " .. Font .. " " .. arg1)
end

-- Figlet with comment TODO: Refine this
local function GetLine()
	local curr_line = vim.api.nvim_win_get_cursor(0)[1]
	print(curr_line)
	return curr_line
end

local function FigComment(arg1)
	vim.api.nvim_command(":read !figlet -f " .. Font .. " " .. arg1)
	require("Comment.api").toggle_linewise_op("line")
	vim.api.nvim_command("normal dd")
	-- vim.api.nvim_command("normal o")
	-- vim.api.nvim_command("normal dw")
end
local function FigCommentWithHighlight(arg1)
	local start_line = GetLine()
	vim.api.nvim_command(":read !figlet -f " .. Font .. " " .. arg1)
	require("Comment.api").toggle_linewise_op("line")
	vim.api.nvim_command("normal dd")
	vim.api.nvim_command("normal o")
	vim.api.nvim_command("normal x")
	local stop_line = GetLine()
	for i = start_line, stop_line do
		vim.api.nvim_buf_add_highlight(0, -1, "ErrorMsg", i, 0, -1)
	end
end
-- TODO: Add support for seeing all fonts in figlet using Telescope or plenary
local function FigList()
	vim.api.nvim_command(":!figlist")
end
-- TODO: Visual select into figlet
local function FigSelect()
	local arg1 = vim.fn.getline(".")
	vim.api.nvim_command(":normal dd")
	Fig(arg1)
end
local function FigSelectComment()
	local arg1 = vim.fn.getline(".")
	vim.api.nvim_command(":normal dd")
	FigComment(arg1)
end
return {
	Fig = Fig,
	FigComment = FigComment,
    FigCommentWithHighlight = FigCommentWithHighlight,
	FigList = FigList,
	FigSelect = FigSelect,
	FigSelectComment = FigSelectComment,
}
