# Josh Miller's Dot Files

These are my personal dotfiles which I use to customize my system. I have based many of these files on [Holman's dotfile setup](https://github.com/holman/dotfiles).

To start clone this repo to your preferred directory: `git clone git@github.com:dprvig/dotfiles.git ~/.dotfiles`. Once the files are cloned, you can change directories `cd ~/.dotfiles`. From there make sure you update `git/gitconfig.symlink` with your `[user]` information. After that you can just run `rake` to set up the dotfiles. If you choose to remove the symlinks, just run `rake uninstall` from this directory.