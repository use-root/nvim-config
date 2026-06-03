vim.cmd.colorscheme("vim")

local transparent = {
	"Normal",
	"NormalNC",
	"SignColumn",
	"EndOfBuffer",
	"StatusLine",
	"TabLine",
}

for _, group in ipairs(transparent) do
	vim.api.nvim_set_hl(0, group, { bg = "none" })
end
