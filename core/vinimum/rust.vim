if executable("rustup") && executable("rustc")
	let $RUST_SRC_PATH = expand(substitute(system("rustc --print sysroot"), '\n\+$', '', '') . "/lib/rustlib/src/rust/library")
	let $CARGO_HOME = expand("~/.cargo")

	let g:lcn_settings#format_on_save = ['rust']

	if !get(g:, 'LanguageClient_serverCommands')
		let g:LanguageClient_serverCommands = {}
	endif
	let g:LanguageClient_serverCommands.rust = ['rustup', 'run', 'nightly', 'rust-analyzer']

	if exists('pbcopy')
		let g:rust_clip_command = 'pbcopy'
	elseif exists('xclipboard')
		let g:rust_clip_command = 'xclipboard'
	endif
endif

" let g:dispatch_compilers = {
"       \ 'x.py': 'rustc',
"       \ '~/src/bin/remote-build.sh ./x.py': 'rustc'}
