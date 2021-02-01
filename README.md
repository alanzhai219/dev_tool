# nvim
nvim tool and config

# clone
```shell
git clone --recursive https://github.com/alanzhai219/nvim.git
```

# install
## step 0 - create config dir
```shell
mkdir -p ~/.config
cd ~/.config
```

## step 1 - clone the repo
```shell
git clone --recursive https://github.com/alanzhai219/nvim.git
```

## step 2 - install fzf
```shell
~/.config/nvim/third-party/fzf/install.sh
```

## step 3 - copy plug.vim
```shell
mkdir ~/.config/nvim/autoload
cp ~/.config/nvim/third-party/vim-plug/plug.vim ~/.config/nvim/autoload
```

## step 4 - install plugins
```shell
nvim
:PlugInstall
```
