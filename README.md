vim configuration files.

![sample](https://raw.github.com/rdodesigns/vimrc/master/sample.png)

Installation
============

To install this vimrc profile,

1. Clone the repo: `git clone https://github.com/rdodesigns/vimrc.git ~/.vim`
2. Symbolic link the vimrc file: `ln -s ~/.vim/vimrc ~/.vimrc`
3. Install Vundle using `git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle`
4. Install Powerline (instructions [are here][powerline_install])
5. Place/Link Powerline config files (`powerline/`) into `~/.config/`.
6. Enter vim and run the command `:BundleInstall`.
7. (Optional) Buy/Install PragmataPro font (it is pretty :-)


Dropbox
-------

This configuration can also be used with Dropbox by using the following steps
(the commands may need to be adjusted for your system).

    git clone https://github.com/rdodesigns/vimrc.git ~/Dropbox/vim
    git clone https://github.com/gmarik/vundle.git ~/Dropbox/vim/bundle/vundle
    mkdir -p ~/.vim/{undo,tmp} ~/.config
    ln -s ~/Dropbox/vim/powerline ~/.config/
    ln -s ~/Dropbox/vim/{bundle,colors,vimrc} ~/.vim/
    ln -s ~/.vim/vimrc ~/.vimrc

After making these links, the command `:BundleInstall` will need to be run
inside vim on one of the machines linked to Dropbox. This will setup the
plugins in the Dropbox folder, so that the plugins installs are synced across
all machines linked to the Dropbox folder.


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

Movement in any form via the arrow keys is disabled. Instead, when in normal
mode, the left/right arrow keys can be used to cycle through the open buffers.

In addition, the `j` and `k` movement keys have been mapped to their wrap
friendly versions, so that pressing either key will move to the next visual
line on a wrapped line instead of jumping to the next actual line of the file.

Backspacing, while in insert mode, can be done over lines.

Moving between windows can be done by appending the control key to the
direction in which you want to go (in h,j,k,l). For example to move right one
window, press `<C-k>`.


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
