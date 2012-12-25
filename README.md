vim configuration files.

Installation
============

To install this vimrc profile,

1. Clone the repo: `git clone git@github.com:rdodesigns/vimrc.git ~/.vim`
2. Symbolic link the vimrc file: `ln -s ~/.vim/vimrc ~/.vimrc`
3. Install Powerline (instructions [are here][powerline_install])
4. (Optional) Buy/Install PragmataPro font (it is pretty :-)


Configuration
=============

This vim profile has a few quirks.


Basic
-----

This profile attempts to stay as true to the default vim keybindings. For
example, the `<leader>` key is '\'.

In addition, the following nice features have been enabled.

- Persistant undo: edits can be undone even after closing and reopening a file.
- Vim will remember the last place you where when editing a file when you reopen that file.
- When writing a file, trailing whitespace is deleted automatically.
- Windows control characters '^M' can be removed via `<leader> m`.
- Buffers can be switched between with left/right arrow keys, even if they have unsaved edits.
- Buffers can be closed by `<leader> bd` without closing the window.
- Highlights from searching can be removed by `<leader><cr>`.
- Tabs are expanded and are 2 spaces long.
- Uses par as the formatting program.
- Can use `*` or `#` commands on visual selection.
- `<F7>` calls a compile function that runs make if a Makefile exists or scons if SConstruct file exists.
- Uses Powerline for the status bar.

Movement Style
--------------

Move


Plugins
=======

The plugins currently in use in this vim configuration are as follows:

- Vundle: Vim plugin manager (required!)
- Fugitive: Git commands in vim (Required for Powerline)
- UltiSnips: snipMate replacement that uses Python.
- Surround: quoting/parenthesizing made simple
- [Numbertoggle][numtoggle]: Change abs/rel numbers automatically.
- Tabular: Vim script for text filtering and alignment
- YankRing: Maintains a history of previous yanks, changes and deletes
- Repeat: enable repeating supported plugin maps with "."
- Speeddating: use CTRL-A/CTRL-X to increment dates, times, and more
- NERD Commenter: Vim plugin for intensely orgasmic commenting
- NERD Tree: A tree explorer plugin for vim
- Syntastic: Syntax checking hacks for vim
- Markdown: Markdown syntax

<!-- Links -->
[powerline_install]: http://lokaltog.github.com/powerline/overview.html#installation
[numtoggle]: http://goo.gl/0ZHg2 "Relative line numbers in Vim for super-fast movement"
