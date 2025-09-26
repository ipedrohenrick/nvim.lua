# Neovim Configs

## Dependencies
- [fd](https://github.com/sharkdp/fd)
- [neovim node-client](https://github.com/neovim/node-client)
- [pynvim](https://github.com/neovim/pynvim)
- [ripgrep](https://github.com/BurntSushi/ripgrep)
- [fzf](https://github.com/junegunn/fzf)
- xclip
- wget

## Install
```bash
mkdir ~/.config
git clone https://github.com/pedrohenrick777/configs.nvim.git ~/.config/nvim
```

## Basic config
```bash
# vim
curl -fsSl https://raw.githubusercontent.com/ph777z/configs.nvim/main/basic/init.vim ~/.vimrc

# neovim
mkdir -p ~/.config/nvim
curl -fsSl https://raw.githubusercontent.com/ph777z/configs.nvim/main/basic/init.vim ~/.config/nvim/init.vim
```