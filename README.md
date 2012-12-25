vim configuration files.

Installation
============

To install this vimrc profile,

1. Clone the repo: `git clone git@github.com:rdodesigns/vimrc.git ~/.vim`
2. Symbolic link the vimrc file: `ln -s ~/.vim/vimrc ~/.vimrc`
3. Install Powerline (instructions [are here][powerline_install])
4. (Optional) Buy/Install PragmataPro font (it is pretty :-)


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
