vim.g.user_emmet_mode = "a"
vim.g.user_emmet_install_global = 0

-- Generar plantilla, con '!' que sobre escribe al html:5
vim.g.user_emmet_settings = {
	html = {
		snippets = {
			["html:5"] = "<!DOCTYPE html>\n"
				.. '<html lang="en">\n'
				.. "<head>\n"
				.. '  <meta charset="UTF-8">\n'
				.. '  <meta name="viewport" content="width=device-width, initial-scale=1.0">\n'
				.. "  <title>${1:Document}</title>\n"
				.. '  <link rel="stylesheet" href="${2:styles.css}">\n'
				.. "</head>\n"
				.. "<body>\n"
				.. "  ${0}\n"
				.. "</body>\n"
				.. "</html>",
		},
	},
}
