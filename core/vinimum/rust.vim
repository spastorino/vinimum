if executable("rustup") && executable("rustc")
	let $RUST_SRC_PATH = expand(substitute(system("rustc --print sysroot"), '\n\+$', '', '') . "/lib/rustlib/src/rust/src")
	let $CARGO_HOME = expand("~/.cargo")

	let g:rustfmt_autosave = 1

	if executable("rls")
		let g:ale_linters = {'rust': ['rls']}
		"let g:ale_rust_cargo_use_clippy = 1
		"let g:ale_ = 1

		au User lsp_setup call lsp#register_server({
			\ 'name': 'rls',
			\ 'cmd': {server_info->['rustup', 'run', 'nightly', 'rls']},
			\ 'whitelist': ['rust'],
			\ })

		nnoremap <silent> K :LspHover<CR>
		nnoremap <silent> gd :LspDefinition<CR>
		nnoremap <silent> gi :LspImplementation<CR>
		nnoremap <silent> gr :LspReferences<CR>
		nnoremap <silent> R :LspRename<CR>
	endif

	if exists('pbcopy')
		let g:rust_clip_command = 'pbcopy'
	elseif exists('xclipboard')
		let g:rust_clip_command = 'xclipboard'
	endif
endif

