# Vinimum 2

My vim config files and plugins distribution.

The project aims to provide a useful set of plugins I use in a day to
day basis.

IMPORTANT: For now it only has Rust related stuff, I will be updating it
soon to add more languages support and tools.

## Requirements

The requirements are the requirements of each of the plugins under langs
and tools directories. So please, check READMEs and docs of the ones
you're interested to know how to use and what is needed to have it
working.

## Installation

```
git clone --recursive https://github.com/spastorino/vinimum.git ~/.vim
ln -s ~/.vim/vimrc ~/.vimrc
cd .vim
./tools/youcompleteme/install.py --system-libclang --clang-completer --go-completer --rust-completer --js-completer

```

## Update

```
git pull
git submodule sync
git submodule update --init --recursive
./tools/youcompleteme/install.py --system-libclang --clang-completer --go-completer --rust-completer --js-completer
```

## Disable plugins

If you want to disable a bundled plugin add the following content to
~/.vimrc.before

```
let g:pathogen_disabled = ['plugin_name']
```
