# how to install flutter on google cloud shell service along with app build


## what is flutter?
Flutter is an open source mobile application framework created by Google. Flutter is used in application development for Android, iOS, Windows, Linux, MacOS operating systems, as well as being the main method for creating Google Fuchsia applications.

## what is shell cloud google?

Google Cloud Shell is an online bash shell based on Debian. The free tier includes 1.7 gigabytes of random-access memory and a persistent 5 gigabyte home directory. Except for the home and root directories, the Cloud Shell environment is volatile. The editor in Google Cloud Shell is based on Eclipse Theia.

### Steps
first open [shell-cloud-google](https://shell.cloud.google.com/) on your browser, and open terminal and do the steps below.

- Make folder android sdk
    ```bash
    mkdir "$HOME/Android" && mkdir "$HOME/Android/Sdk" && cd "$HOME/Android/Sdk"
    ```
- download cmd line
    replace url with [cmdline-latest](https://developer.android.com/studio#command-tools)
    ```bash
    wget https://dl.google.com/android/repository/commandlinetools-linux-7583922_latest.zip
    ```
- extrak cmd line
    ```bash
    unzip commandlinetools* && cd cmdline-tools && mkdir latest && mv * latest/
    ```
- delete cmd line zip
    ```bash
    cd .. && rm -r *.zip
    ```
- export environment
    ```bash
    export ANDROID_SDK="$HOME/Android/Sdk"
    export ANDROID_SDK_ROOT="$HOME/Android/Sdk"
    export ANDROID_HOME="$HOME/Android/Sdk"
    export PATH="$ANDROID_SDK:$ANDROID_HOME/platform-tools/:$ANDROID_HOME/emulator/:$ANDROID_HOME/cmdline-tools/latest/:$ANDROID_HOME/cmdline-tools/latest/bin/:$PATH"
    ```
- sdkmanager
    -   run sdkmanager first
    ```bash
    sdkmanager
    ```
    - install package replace android level latest eg ```platform;android-31``` if you like latest version
    ```bash
    sdkmanager "platforms;android-30"
    ```
    - Install platforms tools
    ```bash
    sdkmanager "platform-tools"
    ```
    - Install patcher
    ```bash
    sdkmanager "patcher;v4"
    ```
    - Install build tools
    ```bash
    sdkmanager "build-tools;30.0.2"
    ```
    - Accept licenses sdkmanager
    ```bash
    sdkmanager --licenses
    ```
- Flutter
    - run flutter first
    ```bash
    flutter
    ```
    - accept licenses
    ```bash
    flutter doctor --android-licenses
    ```
    - run flutter doctor
    if output not ok on android toolchain you can use another email and go to shell cloud again install from 0 again
    ```bash
    flutter doctor
    ```
- make app first in flutter
    run in terminal replace example for your app name
    ```bash
    flutter create example
    ```
    - build release for android
    ```bash
    cd example && flutter build apk --release
    ```
    if after run command result output like this, you succes build android and you can download file and test on your smartphone
    ```bash
    ✓  Built build/app/outputs/flutter-apk/app-release.apk (15.5MB).
    ```


if you like this post please do as below, (I'm not forcing: V)

Follow my [github](https://github.com/azkadev) account:V