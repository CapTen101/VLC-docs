.. _debian:

Debian
======


Debian-logo.jpg Debian
Download page: https://www.videolan.org/vlc/download-debian.html

A standard install without libdvdcss:

# apt-get update
# apt-get install vlc <optional extra components>
Or search for vlc with the graphical package manager you like best. It should be in the main Debian repository in the section Video software. Additional plugins are available and most require manual selection, e.g. vlc-plugin-access-extra, vlc-plugin-notify and vlc-plugin-jack.

For a standard install with libdvdcss:

A simple install of the libdvdcss package can be found here: https://download.videolan.org/debian/stable/, but for future bug fixes add the following lines to your /etc/apt/sources.list:

 deb https://download.videolan.org/debian/stable stable main
 deb-src https://download.videolan.org/debian/stable stable main
Then:

# apt-get update
# apt-get install vlc libdvdcss2 <optional extra components>
This will allow you to decrypt DVDs.