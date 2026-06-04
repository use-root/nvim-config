local actions = require("telescope.actions")
local telescope = require("telescope")

telescope.setup({
	defaults = {
		prompt_prefix = "🔍 ",
		selection_caret = "> ",
		layout_strategy = "flex",
		path_display = { "smart" },
		file_ignore_patterns = { "node_modules", ".git/" },
		color_devicons = true,
		sorting_strategy = "ascending",
		borderchars = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" },
		layout_config = {
			horizontal = { width = 0.9, preview_width = 0.6 },
			vertical = { width = 0.9, height = 0.8 },
			flex = { horizontal = { preview_width = 0.6 }, vertical = { preview_width = 0.5 } },
		},
		mappings = {
			i = {
				["<C-j>"] = actions.move_selection_next,
				["<C-k>"] = actions.move_selection_previous,
				["<C-q>"] = actions.send_to_qflist + actions.open_qflist,
				["<C-d>"] = actions.delete_buffer,
				["<esc>"] = actions.close,
			},
			n = {
				["q"] = actions.close,
				["dd"] = actions.delete_buffer,
				["<C-q>"] = actions.send_to_qflist + actions.open_qflist,
			},
		},
	},
	pickers = {
		find_files = { theme = "dropdown" }, -- sin sidebar, compacto
		buffers = { theme = "dropdown" },
		help_tags = { theme = "dropdown" },
		live_grep = { layout_strategy = "vertical" },
	},
	extensions = {
		fzf = {
			fuzzy = true, -- búsqueda borrosa
			override_generic_sorter = true,
			override_file_sorter = true,
			case_mode = "smart_case",
		},
	},
})

-- cargar extensión fzf
telescope.load_extension("fzf")
