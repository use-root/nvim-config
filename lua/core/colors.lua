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

vim.api.nvim_set_hl(0, "LazyNormal", { bg = "#1e1e2e", fg = "#cdd6f0" })
vim.api.nvim_set_hl(0, "LazyNormalNC", { bg = "#1e1e2e", fg = "#9ca0a4" })

vim.api.nvim_set_hl(0, "MasonNormal", { bg = "#383838", fg = "#cdd6f4" })
vim.api.nvim_set_hl(0, "MasonHighlight", { bg = "#1e1e2e", fg = "#eeeff0" })

vim.opt.winblend = 15
vim.opt.pumblend = 15

vim.api.nvim_set_hl(0, "NormalFloat", { bg = "NONE" })
vim.api.nvim_set_hl(0, "FloatBorder", { bg = "NONE" })

vim.api.nvim_set_hl(0, "Normal", { bg = "NONE" })
vim.api.nvim_set_hl(0, "NormalNC", { bg = "NONE" })
vim.api.nvim_set_hl(0, "LazyNormal", { bg = "NONE" })
vim.api.nvim_set_hl(0, "MasonNormal", { bg = "NONE" })

vim.cmd([[
hi TelescopeNormal guibg=NONE
hi TelescopeBorder guibg=NONE
hi TelescopePromptNormal guibg=NONE
hi TelescopePromptBorder guibg=NONE
hi TelescopePreviewNormal guibg=NONE
hi TelescopePreviewBorder guibg=NONE
hi TelescopeResultsNormal guibg=NONE
hi TelescopeResultsBorder guibg=NONE
]])
