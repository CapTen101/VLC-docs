.. _fedora:

Fedora
=======

For the latest version (up to the now-current version 3.0.x) use RPM Fusion:
See also the `Configuration <https://rpmfusion.org/Configuration>`_.

Please report "packaging bugs" on `Bugzilla <https://bugzilla.rpmfusion.org/>`_.

If you want to have DVD playback ability, you will need to install the libdvdcss package too.


Fedora with DNF: (vlc-3.0.x - available for armhfp, x86_64, aarch64 and ppc64le architectures)

.. code-block::

    $> su -
        #> dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
        #> dnf install vlc
        #> dnf install vlc-core             # (for minimal headless/server install)
        #> dnf install python-vlc npapi-vlc # (optionals)
        #> dnf install rpmfusion-free-release-tainted # to access tainted repository (optional)
        #> dnf install libdvdcss            # (for DVD Playback)

