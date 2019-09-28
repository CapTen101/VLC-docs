.. _ubuntu:

Ubuntu
======


Ubuntu logo Ubuntu
Links: Download page • Launchpad (Source • Bugs sorted by most users • Questions)

Launch the Ubuntu Software Center and go to All Software → Sound & Video then in search VLC Player. After it will come click on it and it will automatically install

You need to check that a universe mirror is listed in your /etc/apt/sources.list file.

$ sudo apt-get update
$ sudo apt-get install vlc vlc-plugin-pulse mozilla-plugin-vlc
As given by https://help.ubuntu.com/community/RestrictedFormats/PlayingDVDs:

$ sudo apt install libdvd-pkg && sudo dpkg-reconfigure libdvd-pkg
will install a packaged version of libdvdcss without the need for third-party repos.