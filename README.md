# dotfiles

## Requirements

Ensure that the following are installed

### Git

MacOS
```
brew install git
```

ArchLinux
```
sudo pacman -S git
```

### Stow

MacOS
```
brew install stow
```

```
sudo pacman -S stow
```

## Installation

First, clone the dotfiles repo to your $HOME directory using git

```
$ git clone git@github.com:kenanajkunic/dotfiles.git
$ cd dotfiles
```

then use GNU stow to create symlinks

```
$ stow .
```


