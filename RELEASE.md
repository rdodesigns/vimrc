Version 0.2.3 (2013/05/23 20:23 UTC-6)
======================================

Updated powerline configuration to match the powerline repo. In addition, the
comments in vimrc were cleaned up.


Version 0.2.2 (2013/05/01 03:30 UTC-7)
======================================

A variety of small fixes. Major annoyance fix is that the left-hand scrollbar
no longer appears in the GUI programs during vertical splits.

Fixed
-----
- Removed left/right hand scrollbar on vertical split.
- > and < are limited to multiples of shiftwidth (2)
- Added sidescrolloff (0 to 5), changed scrolloff to 2.
- Added checks for undodir, backupdir, and dir.


Version 0.2.1 (2013/05/01 01:02 UTC-7)
======================================

Resolved all the TODOs in the vimrc file.

Fixed
-----
- Now check for par before trying to use it.
- Silently fail guifont=PragmataPro if the font is not installed.


Version 0.2.0 (2013/05/01 00:13 UTC-7)
======================================

A new versioning scheme is being implemented. Now 0.x.0 releases are done
on new plugins, and 0.0.x releases are only bug fixes. Not sure what x.0.0
means....

New
---
- Added the Abolish plugin: See the README.
- Started an all.snippets Ultisnips file containing a gpl snippet.


Version 0.1.1 (2013/03/29 20:38 UTC-5)
======================================

The main change in this release is to revert to standard vi behaviour on
backspacing, where one cannot backspace past the point where vim entered
insert mode. This was done to keep the undo tree cleaner as well as to promote
users to be concious of their inserts.

Changed
-------
- Backspacing past the insertion point is no longer possible.

Fixed
-----
- README no longer discusses j/k wrapped movement or backspacing past the
  insertion point.

Version 0.1.0 (2013/03/07 21:09 UTC-8)
======================================

This release is mainly to add powerline as a specific bundle inside the
repository (through Vundle). Powerline is changing frequently, and since its
installation instructions keep changing, it is simpler to add it in this repo
than it is to keep asking users to reinstall Powerline.

New
---
- Powerline was added as a Vundle bundle to ease installation.

Changed
-------
- The default powerline colorscheme is currently in use, since the old one
  (gray) no longer works under the new powerline.
- j and k no longer map to gj and gk. This means that, when lines wrap, j and k
  no longer move visually up/down one visual line but up/down one actual line.

Fixed
-----
- Powerline now responds instantly when entering/leaving insert mode.


Version 0.0.5 (2013/02/05 23:26 UTC-8)
======================================

New
---
- New colour scheme for Powerline (gray). It is set to the default.

Fixes
-----
- Use alternative statusline if powerline cannot be loaded.
- Disabled remembering vim buffers if vim is called with no arguments (this was
  particularly annoying with MacVim)


Version 0.0.4 (2013/02/05 23:41 UTC-8)
======================================

Fixes
-----
- "-- INSERT --" no longer appears in the command bar (it is reflected
  in the status line).


Version 0.0.3 (10/01/2013 01:40 UTC-8)
======================================

Added gundo plugin for visualising the git undo tree.

Fixed
-----
- Yankring activation key is now noted in README.


Version 0.0.2 (02/01/2013 13:49 UTC-8)
======================================

This is a minor release to update some errors found in the vim configuration.

Fixed
-----
- Changed git clone to https from git@ in README.
- Moved yankring history from ~ to ~/.vim/tmp
- Commands in README consolidated using {} notation.

New
---
- Added powerline configuration files. Instructions for installing them can be
  found in the README.


Version 0.0.1 (25/12/2012 23:48 UTC-7)
======================================

- Changed undodir from 'undodir' to 'undo'
- Added install instructions for Dropbox
- Added screenshot to readme.


Version 0.0.0 (Initial Release)
===============================

See the code/README for information as to what is in this configuration.
