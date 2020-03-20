### Simple vimrc for my personal use

#### Installation instructions
- Install `git`
- `git clone` this repository and place the `.vimrc` you just downloaded in the folder where your `.vim` is stored.
- Download the packages you want and [Vundle](https://github.com/VundleVim/Vundle.vim) (or any other vim packages manager of your choice):
  - [Palenight](https://github.com/drewtempelmeyer/palenight.vim) is the colorscheme I use
  - [NERDTree](https://github.com/preservim/nerdtree) is a file explorer for vim
  - [Vim Fugitive](https://github.com/tpope/vim-fugitive) is a git wrapper for vim
  - If you don't wish to use some of the above packages, simply remove the corresponding line(s) in the `.vimrc` file. 
  
  For instance:
      `Plugin 'tpope/vim-fugitive'`
- Place them in a child folder of your `.vim`, yielding a path like `~/.vim/bundle` to reach them. 

If you store them elsewhere, be sure to change the corresponding line in the `.vimrc`.


For instance: `set rtp+=~/.vim/bundle/Vundle.vim`
- Launch `vim` and run `:PluginInstall`
