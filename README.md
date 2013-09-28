# WP-Hook-Finder #

This plugin makes finding hooked functions in WordPress a cinch. It also allows finding the declaration of the given hook or filter in the source code.

This plugin uses [Ack](http://beyondgrep.com/) for searching the WordPress root and [Ack.vim](https://github.com/mileszs/ack.vim) for the awesome quickfix list integration.

## Installation ##

### Ack & Ack.vim ###

Instructions for installing Ack and Ack.vim can be found on the [Ack.vim github](https://github.com/mileszs/ack.vim#installation)

### Plugin ###

With [pathogen](https://github.com/tpope/vim-pathogen):

    cd ~/.vim/bundle
    git clone git://github.com/borzhemsky/wp-hook-finder.git

...or simply place wp-hook-finder.vim in ~/.vim/plugin
Add the following to ~/.vimrc:

    nnoremap <Leader>f :FindWPHook<CR>
    nnoremap <Leader>F :FindWPHookDef<CR>

## Usage ##

Place the caret on name of the hook or filter, then press `<Leader>+f` to find the hooked functions, or `<Leader>+F` to find the hook/filter definition.

### Gotchas ###

This plugin relies on `wp-config.php` being located in the WordPress root, so it will not work with non-standard directory hierarchies.
