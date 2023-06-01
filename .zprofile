# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running zsh
if [ -n "$ZSH_VERSION" ]; then
    # include .zshrc if it exists
    if [ -f "$HOME/.zshrc" ]; then
	. "$HOME/.zshrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

# Local global npm package
if [ -d "$HOME/.global-npm-packages/bin" ] ; then
    PATH="$HOME/.global-npm-packages/bin:$PATH"
fi

# Android and Flutter SDK
if [ -d "$HOME/.Android" ] ; then
    export ANDROID_HOME="$HOME/.Android/Sdk"
    export ANDROID_NDK_ROOT="$HOME/.Android/Sdk/ndk-bundle"
    PATH="$ANDROID_HOME/platform-tools:$ANDROID_HOME/cmdline-tools/latest/bin:$ANDROID_HOME/build-tools/33.0.0:$ANDROID_NDK_ROOT:$HOME/.Android/flutter/bin:$PATH"
fi

# Docker cli Plugins
if [ -d "$HOME/.docker/cli-plugins" ] ; then
    export DOCKER_CONFIG="$HOME/.docker"
    PATH="$DOCKER_CONFIG/cli-plugins:$PATH"
fi

# Composer local global packages
if [ -d "$HOME/.config/composer/vendor/bin" ] ; then
    PATH="$HOME/.config/composer/vendor/bin:$PATH"
fi

# flutterfire cli
if [ -d "$HOME/.pub-cache/bin" ] ; then
    PATH="$HOME/.pub-cache/bin:$PATH"
fi

# Go enviroment variables
if [ -d "$HOME/.gopath" ] ; then
    export GOPATH="$HOME/.gopath"
    GO111MODULE="off"
    PATH="$GOPATH/bin:$PATH"
fi

# Rust enviroment variable
if [ -d "$HOME/.cargo/bin" ] ; then
    PATH="$HOME/.cargo/bin:$PATH"
fi

# Ruby enviroment variable
if [ -d "$HOME/.gem/bin" ] ; then
    PATH="$HOME/.gem/bin:$PATH"
fi

# Tmuxifier enviroment variable
if [ -d "$HOME/.tmuxifier" ] ; then
    PATH="$HOME/.tmuxifier/bin:$PATH"
fi

export LC_ALL=en_IN.UTF-8

# Added by Toolbox App
export PATH="$PATH:$HOME/.local/share/JetBrains/Toolbox/scripts"
