#!/bin/bash

CONFIG_PATH=$HOME/.config/nvim

declare -a __rust_deps=(
  "fd::find"
  "rg::ripgrep"
)

declare -a __system_deps=(
  "xclip"
  "nvim"
  "npm"
  "python3"
  "cargo"
)

declare -a __npm_deps=(
  "neovim"
)

declare -a __pip_deps=(
  "pynvim"
)


function verify_deps() {
  if [ -f "/etc/arch-release" ] || [ -f "/etc/artix-release" ]; then
    PACKAGE_INSTALL="sudo pacman -S"
  elif [ -f "/etc/fedora-release" ] || [ -f "/etc/redhat-release" ]; then
    PACKAGE_INSTALL="sudo dnf install -y"
  elif [ -f "/etc/gentoo-release" ]; then
    PACKAGE_INSTALL="emerge -tv"
  else
    PACKAGE_INSTALL="sudo apt install -y"
  fi
  
  for dep in "${__system_deps[@]}"; do
    if ! command -v $dep >> /dev/null; then
      echo -e "\nUm pre-requisito não foi encontrados: ${dep}"
      echo -e "\nO instale com ${PACKAGE_INSTALL} ${dep}"
      exit 1
    fi
  done
}

function rust_deps_install() {
  for dep in in "${__rust_deps[@]}"; do
    if ! command -v "${dep%%::*}" &>/dev/null; then
      cargo install "${dep##*::}"
    fi
  done
}

function npm_deps_install() {
  for dep in "${__npm_deps[@]}"; do
    if ! npm ls -g $dep &>/dev/null; then
      npm install -g $dep
    fi
  done
}

function py_activate_venv() {
  local VENV_PATH=$CONFIG_PATH/.venv 
  local ACTIVATE_VENV_PATH=$VENV_PATH/bin/activate
  if [ ! -e $ACTIVATE_VENV_PATH ];then
    python -m venv $VENV_PATH
  fi

  source $ACTIVATE_VENV_PATH
}

function pip_deps_install(){
  py_activate_venv
  for dep in "${__pip_deps[@]}"; do
    pip install $dep
  done
}

function clone_config() {
  if [ -d ~/.config/nvim ];then
    rm -rf ~/.config/nvim
  fi
  git clone https://github.com/pedrohenrick777/configs.nvim.git $CONFIG_PATH
}

function main() {
  verify_deps

  clone_config

  rust_deps_install
  npm_deps_install
  pip_deps_install
}

main
