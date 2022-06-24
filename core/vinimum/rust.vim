if executable("rustup") && executable("rustc")
	let $RUST_SRC_PATH = expand(substitute(system("rustc --print sysroot"), '\n\+$', '', '') . "/lib/rustlib/src/rust/library")
	let $CARGO_HOME = expand("~/.cargo")

	if exists('pbcopy')
		let g:rust_clip_command = 'pbcopy'
	elseif exists('xclipboard')
		let g:rust_clip_command = 'xclipboard'
	endif
endif

" let g:dispatch_compilers = {
"       \ 'x.py': 'rustc',
"       \ '~/src/bin/remote-build.sh ./x.py': 'rustc'}
