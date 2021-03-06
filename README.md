vim configuration files.

![sample](https://raw.github.com/rdodesigns/vimrc/master/sample.png)


Installation
============

The following commands will install this profile.

    git clone https://github.com/rdodesigns/vimrc.git ~/.vim
    git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
    ln -s ~/.vim/vimrc ~/.vimrc

After performing these steps, you will need to run the `:BundleInstall`
command inside vim to install all of the plugins in this configuration.

Optionally, install the PragmataPro font. It is pretty. :-)


Dropbox
-------

This configuration can also be used with Dropbox by using the following steps
(the commands may need to be adjusted for your system).

    git clone https://github.com/rdodesigns/vimrc.git ~/Dropbox/vim
    git clone https://github.com/gmarik/vundle.git ~/Dropbox/vim/bundle/vundle
    mkdir -p ~/.vim/{undo,tmp} ~/.config
    ln -s ~/Dropbox/vim/{after,bundle,colors,ftplugin,UltiSnips,vimrc} ~/.vim/
    ln -s ~/.vim/vimrc ~/.vimrc

After making these links, the command `:BundleInstall` will need to be run
inside vim on one of the machines linked to Dropbox. This will setup the
plugins in the Dropbox folder, so that the plugins installs are synced across
all machines linked to the Dropbox folder.


Go omnicompletion
-----------------

In order to use the Go omnicompletion bundle, you will need the `gocode`
daemon. This can be installed as follows (assuming a `$GOPATH` has been
specified in your terminal).

    go get -u github.com/nsf/gocode

This should be all that is required in order to have omni completion in Go
files. However, if you run into trouble, the full gocode documentation can be
found [here](https://github.com/nsf/gocode). Note that the vim configuration
details are taken care of using a bundle.


Haskell autocompletion
----------------------

In order to use the Haskell bundles, the ghc-mod cabal package needs to be
installed. This can be done with the following command (assuming cabal is
installed).

    cabal install ghc-mod


<!--
Python Autocompletion
---------------------

To have the Jedi Python autocompletion work, the jedi module must be
installed. One way to do this is to use `pip`.

    pip install jedi

On certain systems (for example, Ubuntu), it is advisable to use the package
manager instead (apt).
-->


Processing Setup
----------------

To use `:make` to run a Processing sketch, first make sure to install
the `processing-java` utility. To do this, open Processing and select
`Tools->Install "processing-java"`.


Configuration
=============

This vim profile has a few quirks.


Basic
-----

This profile attempts to stay as true to the default vim keybindings. For
example, the `<leader>` key is '\'.

In addition, the following nice features have been enabled.

- Line wrapping is on.
- Persistant undo: edits can be undone even after closing and reopening a file.
- Vim will remember the last place you where when editing a file when you
  reopen that file.
- When writing a file, trailing whitespace is deleted automatically.
- Windows control characters '^M' can be removed via `<leader> m`.
- Buffers can be switched between with left/right arrow keys, even if they have
  unsaved edits.
- Buffers can be closed by `<leader> bd` without closing the window.
- Highlights from searching can be removed by `<leader><cr>`.
- Tabs are expanded and are 2 spaces long.
- Uses `par` as the formatting program.
- Can use `*` or `#` commands on visual selection.
- `<F7>` calls a compile function that runs make if a Makefile exists or scons
  if SConstruct file exists.
- If you do not have python support compiled, then the vimrc degrades
  gracefully. Ultisnips will not be present.
- Go programs are automatically formatted on save (vim-gocode bundle).
- Pressing 'K' in normal mode in python, processing, or go files brings up
  documentation.
- Omni completion is enabled and used by pressing the tab key (see the
  SuperTab bundle below).


Movement Style
--------------

Movement in any form via the arrow keys is disabled. Instead, when in normal
mode, the left/right arrow keys can be used to cycle through the open buffers.

Moving between windows can be done by appending the control key to the
direction in which you want to go (in h,j,k,l). For example to move right one
window, press `<C-l>`.


Plugins
=======

The plugins currently in use in this vim configuration are as follows:

- Vundle: Vim plugin manager (required!)
- vim-airline: A nice status bar.
- Fugitive: Git commands in vim
- UltiSnips: snipMate replacement that uses Python.
- Surround: quoting/parenthesizing made simple
- [Numbertoggle][numtoggle]: Change abs/rel numbers automatically.
- Tabular: Vim script for text filtering and alignment
- YankRing: Maintains a history of previous yanks, changes and deletes.
  Activated with `<leader> y`.
- Repeat: enable repeating supported plugin maps with "."
- Speeddating: use CTRL-A/CTRL-X to increment dates, times, and more
- NERD Commenter: Vim plugin for intensely orgasmic commenting
- NERD Tree: A tree explorer plugin for vim
- Syntastic: Syntax checking hacks for vim
- Markdown: Markdown syntax
- Gundo: Visualise the vim undo tree. Activated with `F5`.
- [Abolish][abolish]: easily search for, substitute, and abbreviate multiple
  variants of a word
- [Go][go_bundle]: Vim plugins for Go. Includes syntax highlighting. In
  addition, omni-completion is Go code is provided through vim-gocode.
- SuperTab: use tab for omni completion.
- [EasyMotion][easymotion]: EasyMotion provides a much simpler way to use some
  motions in vim.
- vim-moin: A MoinMoin wiki syntax file.
- pydoc: Makes "k" bring up relevant python documentation.
- vim-lucius: Colorscheme (slightly modified, see vimrc).
- vim-pandoc: Pandoc support (mostly color).
- vim-processing: Processing file support (colors), as well as interfacing the
  `processing-java` tool with the `:make` command in vim.
- vim-unimpaired: a bunch of handy bracket shortcuts.
- vim-exchange: easy text exchange bundle.
- Tagbar: ctags visualizer (press F8)

<!-- - jedi-vim: Python tab autocompletion. -->


<!-- Links -->
[numtoggle]: http://goo.gl/0ZHg2 "Relative line numbers in Vim for super-fast movement"
[abolish]: https://github.com/tpope/vim-abolish "easily search for, substitute, and abbreviate multiple variants of a word"
[go_bundle]: https://github.com/jnwhiteh/vim-golang
[easymotion]: https://github.com/Lokaltog/vim-easymotion
