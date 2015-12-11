NeoFront
========

NeoVim configuration aimed at the frontend developer:

- Built for Mac users
- Main frontend languages supported with improved syntax highlighting
- Use of plugins especially written to use Neovim's job-control functionality
- True color support and cursor change on iTerm2
- Modularised settings
- **FZF** and **The Silver Searcher** support
- **YouCompleteMe** autocompletion

# Prerequisites

- [Homebrew](http://brew.sh)
	- [Neovim](https://github.com/neovim/homebrew-neovim/blob/master/README.md)
	- [Neovim Python Client](https://github.com/neovim/python-client)
	- [The Silver Searcher](https://github.com/ggreer/the_silver_searcher)
- [iTerm2 Beta/Nightly](https://www.iterm2.com/downloads.html)

# Instructions

Download **iTerm 2** from the link above.
Install [Homebrew](http://brew.sh):

```
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

Install **The Silver Searcher**

```
$ brew install the_silver_searcher
```

Install Neovim

```
$ brew tap neovim/neovim
$ brew install neovim/neovim/neovim
```

If you want the latest development release

```
$ brew install --HEAD neovim
```

Install Neovim Python client

```
$ pip install neovim
```

Clone the repo in the `~/.config` folder

```
git clone https://github.com/genoma/NeoFront ~/.config/nvim
```

Start Neovim and install the plugins

```
:PlugInstall
```

Upgrade [VimPlug](https://github.com/junegunn/vim-plug)

```
:PlugUpgrade
```

# Update

To update Neovim development release

```
$ brew reinstall neovim --HEAD
```

To update the plugins

```
:PlugUpdate
```

To update Neovim Python client
```
$ pip install neovim --upgrade
```

To update the Neovim distribution
```
$ cd ~/.config/nvim
$ git pull
```

### Pip update suggestion

You should install [pip-tools](https://github.com/nvie/pip-tools)

```
$ pip install pip-tools
```

Thank you can update all *Pip* installed plugins

```
$ pip-review -a
```

# Learn to use it

Vim and Neovim are considered the hardest editors to learn and you should usually be productive in around a few days, but there are a couple of reads you should do to ease your path through becoming a Vim/Neovim master:

- [Practical Vim](http://www.amazon.com/Practical-Vim-Second-Speed-Thought-ebook/dp/B018T6ZVPK/ref=mt_kindle?_encoding=UTF8&me=) is considered the Vim bible
- [Vim Adventures](http://vim-adventures.com/) that should be fun!
