#! /bin/sh

sudo apt update -y
sudo apt install curl file git unzip xz-utils zip libglu1-mesa clang cmake ninja-build pkg-config libgtk-3-dev -y
wget https://storage.googleapis.com/flutter_infra_release/releases/stable/linux/flutter_linux_3.3.4-stable.tar.xz
tar xvf ./flutter_linux_*.tar.xz
export PATH="$PATH:$PWD/flutter/bin"