#!/bin/sh

sudo apt install openjdk-8-jre
sudo apt install openjdk-8-jdk

mkdir "$HOME/Android" && mkdir "$HOME/Android/Sdk"
cd "$HOME/Android/Sdk"

wget https://dl.google.com/android/repository/commandlinetools-linux-7583922_latest.zip
unzip commandlinetools* && cd cmdline-tools && mkdir latest && mv * latest/
cd .. && rm -r *.zip

export ANDROID_SDK="$HOME/Android/Sdk"
export ANDROID_SDK_ROOT="$HOME/Android/Sdk"
export ANDROID_HOME="$HOME/Android/Sdk"
export PATH="$ANDROID_HOME/cmdline-tools/latest/bin/:$PATH"
export PATH="$ANDROID_HOME/cmdline-tools/latest/:$PATH"
export PATH="$ANDROID_HOME/emulator/:$PATH"
export PATH="$ANDROID_HOME/platform-tools/:$PATH"
export PATH="$ANDROID_SDK:$PATH"

sdkmanager
sdkmanager "platforms;android-30"
sdkmanager "platform-tools"
sdkmanager "patcher;v4"
sdkmanager "build-tools;30.0.2"
sdkmanager --licenses

flutter doctor --android-licenses
flutter doctor
