Version 0.7.1 (2015/07/21 13:41 UTC-7)
======================================

Changed the sample picture! That's it!


Version 0.7.0 (2015/07/21 13:17 UTC-7)
======================================

Most important is the removal of powerline in favour of vim-airline, which is
a status bar plugin that is quicker, more robust, integrated with vim plugins
nicely, and does not require python!

New
---

- Add ftplugin/clojure file
- Add purescripy syntax plugin
- Add slime plugin
- Add swift syntax plugin
- Add hy syntax plugin
- Add Clojure plugs (static, fireplace, niji, paredit)
- Add ghc-con plugin
- Add pandoc syntax bundle
- Synastic has <leader>s and <leader>e shortcut


Fixed
-----

- Change all `Bundle` statements to `Plugin`
- Change tab/indent behavior for pandoc


Changed
-------

- Removed powerline for vim-airline
- Add haskell hdevtools, disable ghc-mod
- Remove vim-processing module
- vim pandoc no longer automatically folds.
- Change conceal color (no background).
- Disable ghc-mod K shortcut for Haskell
- Removed moin-moin syntax bundle.
- Haskell `\a ->` now replaces `\ ` with λ.
- Change spell shortcuts (spell is `\pp`, fix is `\pc`.


Version 0.6.1 (2014/06/05 02:28 UTC-8)
======================================

Another update to bring in lingering changes. :-)

The main change in this one is the removal of CoVim (which added errors
when twisted was not installed and crashed vim regularly). In addition, a
few useful packages were added, and some saner python default settings were
added.

New
---

- unimpaired bundle: a bunch of handy bracket based shortcuts.
- exchange bundle: easy text exchanging.
- Tagbar: a decent ctags visualizer.

Fixed
-----

- Python specific settings (nosmartindent, 4 space tabs). Most notably is the
  local un-setting of smartindent, which prevents the annoying behaviour
  where typing a comment would move the line to the first column of the
  file.

Changed
-------

- Removed CoVim. Wemux seems to be a good replacement.
- Ultisnips moved it snippets into a new directory (smart move), and this
  update brings this vimrc in line with the new snippets repo.
- formatprg now sets things to 76 columns to account for the number line
  (including numbers up to the thousands).
- Clean up fugitive buffers automatically (thanks vimcasts.org).


Version 0.6.0 (2014/02/02 16:34 UTC-8)
======================================

An update to add in a few lingering changes that were in use for some time.
Note that this might not be terribly stable, as it has not been tested on new
installation.

Much of the new features revolve around completion or integration with a
programming language, such as Haskell, Processing, Pandoc, and Matlab. In
addition, a collaborative vim plugin (for pair programming) called CoVim is
added as a bundle.

New
---

- Additional abolish (have->have).
- Pandoc support, with no folding by default.
- Matlab file support (better coloring).
- Haskell tab completion, warning/errors, type enumeration. This uses the
  Haskell Lint package as well to provide helpful coding hints.
- Processing support. When typing `:make`, if the `processing-java` binary
  exists in the user's path, then the sketch is launched from vim directly.
- CoVim, dubbed "Google Docs for vim".


Fixed
-----

- The `\sc` (correct spelling error before cursor) no longer stays in
  the `=` mode.
- Bland status line if inside tmux. This was due to a rendering error in tmux
  when using powerline. However, the error might have been due to something
  outside of vim, so the powerline status bar in tmux might be restored in
  the future.
- Install instructions were missing the linking of a few directories in the
  Dropbox configuration.


Changed
-------

- New colorscheme (LuciusBlack).
- Fileformat defaults now "unix,mac,dos" (mac and dos flipped).
- Forced 84 columns when starting in GUI mode.
- Go specific settings moved into ftplugin.


Version 0.5.3 (2013/09/01 22:00 UTC-7)
======================================

Changed
-------

- Bundle vim-gocode now automatically formats on save. The autoformatter used
  prior (format on load) has been removed as a result.


Version 0.5.2 (2013/09/01 21:45 UTC-7)
======================================

Fixed
-----

- Check for "xterm-256color" before attempting to use ir_black colorscheme.


Version 0.5.1 (2013/09/01 21:45 UTC-7)
======================================

Fixed
-----

- New relative numbering bundle no longer requires relativenumber to be set.


Version 0.5.0 (2013/06/28 15:48 UTC+1)
======================================

The main change in this revision is the addition of omni completion through
the tab key (provided by the SuperTab bundle). In addition to the default omni
completion, a Go omni complete bundle was added.

Pressing 'K' in normal mode in a python or vim file will bring up the
documentation of the word under the cursor.

In addition, the EasyMotion bundle simplifies movement commands. Please
see the bundle's page for how to use it. The basic idea is that pressing
`<leader><leader>` before a movement command (such as `<leader><leader>w`)
will highlight how far a certain number of that movement command will land
(for example, showing where `5w` will be).

Finally, for Mac users, pressing `gO` over a file name (or URL) inside vim
will open that file in the default Mac application.

New
---

- Bring up python documentation with 'K', like Go docs.
- Pressing 'K' in normal mode brings up Go documentation.
- Go code files are automatically formatted on read, spaces, width 2.
- Added omni completion of Go code through a bundle.
- Set up omni completion with SuperTab, use tab to expand.
- Added easymotion bundle.
- Added MoinMoin syntax bundle.
- Pressing 'gO' will now open the file under cursor in Mac app.


Changed
-------

- Cleaned up vimrc bundles section a bit.
- Removed only bold statement left in IR_Black colour scheme.
- Made SignColumn have a black background to match black term.


Version 0.4.2 (2013/06/02 16:23 UTC-7)
======================================

This release is like most of the others: a few interface tweaks. The major
addition is the Go bundle, which brings syntax highlighting for the Go
language into this vimrc.

New
---

- Added bundle for the Go language. Adds syntax coloring.


Changed
-------

- Switched over to US spelling defaults.
- All spelling errors are now on an orange background in ir_black.
- Removed BOLD from all guifont in ir_black.



Version 0.4.1 (2013/06/02 16:23 UTC-7)
======================================

This is a bug fix only release. Added select mode to powerline, solved eval
problem with Ultisnips.

Previously, UltiSnips threw an error "Ultisnips: eval did not return a valid
python object". This was actually due to the gray powerline configuration,
which did not specify a color scheme for when in select mode. Since UltiSnips
moves into select mode when moving into fields, it threw the error.

Now this is fixed, and a dark green "SELECT" mode indicator appears when
entering select mode.


Version 0.4.0 (2013/05/25 02:36 UTC-6)
======================================

This release is all about colour. A new slim powerline status bar colour scheme
called "gray" is now the default. In addition, the colours used in the default
colour scheme for Vim were altered to bring the colours up to date and to
remove some annoying contrast clashes.


Powerline colour changes
------------------------

- Mostly grey power bar.
- Mode colours are now displayed with white text, solid background.
- Many status bar fields removed (file format, file encoding, git branch, git
  status, line number symbol, etc).
- Modified read-only file indicator to purple "RO", and moved its location to
  after the file name.
- Normal mode indicator removed.
- Percent of file indicator now grey instead of a green to red gradient.
- Modified indicator is now "+++" instead of "+", and orange.


ir_black colour changes
-----------------------

- WildMenu now uses a blue highlight on a black background.
- Popup Menu now uses dark grey background with blue highlighting.
- Error messages are in red text.
- Search results are white text on a red background.
- Spelling checks are white text on an orange background.
- TODO, FIXME, NOTE, etc are now white text with purple background.
- Exception statements (try, catch, finally) are in yellow text.
- GUI bold statements removed.


Changed
-------

- Powerline configuration files not related to vim purged.


Version 0.3.0 (2013/05/23 20:39 UTC-6)
======================================

Vim no longer requires python support to run. Even if the bundles are in the
bundle directory, they will not be run.


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
