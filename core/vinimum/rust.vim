if executable("rustup") && executable("rustc")
	let $RUST_SRC_PATH = expand(substitute(system("rustc --print sysroot"), '\n\+$', '', '') . "/lib/rustlib/src/rust/src")
	let $CARGO_HOME = expand("~/.cargo")

	let g:rustfmt_autosave = 1

	if exists('pbcopy')
		let g:rust_clip_command = 'pbcopy'
	elseif exists('xclipboard')
		let g:rust_clip_command = 'xclipboard'
	endif
endif

