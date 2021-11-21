#!/usr/bin/env bash

nvim -c PluginUpdate
echo "$(date) success update nvim plugin" >> ~/.local/share/nvim/autoUpdateNVimPlugin.log
