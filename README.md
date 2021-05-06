# dotfiles

My config files.

## Shell

Currently I use `zsh` without any plugins and without [oh-my-zsh](https://ohmyz.sh).

[zsh config](.zshrc)

## Vim

[vim config](.vimrc)

## Neovim

[neovim config](neovim/init.vim)

### Setup

- [Neovim](https://rust-analyzer.github.io/manual.html#vimneovim)
- [Rust analyzer](https://rust-analyzer.github.io/manual.html#vimneovim)
- [ripgrep](https://github.com/BurntSushi/ripgrep#installation)

```console
brew install --HEAD neovim
brew install ripgrep
brew install rust-analyzer
```

Install vim plug

View [info](https://github.com/junegunn/vim-plug)

```console
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

## VS Code

[VS Code](https://code.visualstudio.com) is my editor of choice.

### Settings and snippets

- [Settings](vscode/settings.json)
- [React](vscode/javascriptreact.json)
- [JavaScript](vscode/javascript.json)

### Extensions

- [ESLint](https://marketplace.visualstudio.com/items?itemName=dbaeumer.vscode-eslint)
- [EditorConfig](https://marketplace.visualstudio.com/items?itemName=EditorConfig.EditorConfig)
- [Prettier](https://marketplace.visualstudio.com/items?itemName=esbenp.prettier-vscode)
- [markdownlint](https://marketplace.visualstudio.com/items?itemName=DavidAnson.vscode-markdownlint)
- [Go](https://marketplace.visualstudio.com/items?itemName=golang.Go)
- [Better TOML](https://marketplace.visualstudio.com/items?itemName=bungcip.better-toml)
- [rust-analyzer](https://marketplace.visualstudio.com/items?itemName=matklad.rust-analyzer)
- [Svelte](https://marketplace.visualstudio.com/items?itemName=svelte.svelte-vscode)
- [Python](https://marketplace.visualstudio.com/items?itemName=ms-python.python)
