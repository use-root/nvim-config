local M = {}

-- Git branch
local cached_branch = ""
local last_check = 0

local function git_branch()
	local now = vim.loop.now()
	if now - last_check > 5000 then
		cached_branch = vim.fn.system("git branch --show-current 2>/dev/null | tr -d '\n'")
		last_check = now
	end
	if cached_branch ~= "" then
		return "  " .. cached_branch .. " "
	end
	return ""
end

local function file_type()
	local ft = vim.bo.filetype
	if ft == "" then
		return "  "
	end
	return "  " .. ft
end

local function file_size()
	local size = vim.fn.getfsize(vim.fn.expand("%"))
	if size < 0 then
		return ""
	end

	if size < 1024 then
		return size .. "B"
	elseif size < 1024 * 1024 then
		return string.format("%.1fK", size / 1024)
	else
		return string.format("%.1fM", size / 1024 / 1024)
	end
end

local function mode_icon()
	local mode = vim.fn.mode()
	local map = {
		n = "NORMAL",
		i = "INSERT",
		v = "VISUAL",
		V = "V-LINE",
		c = "COMMAND",
	}
	return map[mode] or mode
end

function M.setup()
	vim.opt.statusline = table.concat({
		" ",
		"%{v:lua.require'config.statusline'.mode()} ",
		"%f %h%m%r",
		"%{v:lua.require'config.statusline'.git()}",
		" %= ",
		"%l:%c %p%%",
	})
end

function M.git()
	return git_branch()
end
function M.filetype()
	return file_type()
end
function M.size()
	return file_size()
end
function M.mode()
	return mode_icon()
end

return M
