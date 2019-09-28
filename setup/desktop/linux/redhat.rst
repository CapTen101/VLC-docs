.. _redhat:

Red Hat
=======

Adapted (annotated) from https://www.videolan.org/vlc/download-redhat.html:

Red Hat/CentOS/Scientific Linux have almost the same setups (they're all derived from Red Hat). Red Hat and derivatives have different instructions if EPEL (Extra Packages for Enterprise Linux) is not set up. Red Hat Network (RHN) users should verify that they have enabled the optionals and extras channels for RHN subscriptions.

If you want to have DVD playback ability, you will need to install the libdvdcss package too (source).

For the latest version (up to the now-current version 3.0.6) use RPM Fusion, otherwise VLC branches 2.0.x and 2.2.x are available: Red Hat/CentOS/Scientific Linux 7: (vlc-2.2.x – branch available for x86_64 architectures)

.. code-block::

    $> su -
        #> yum install https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
        #> yum install https://download1.rpmfusion.org/free/el/rpmfusion-free-release-7.noarch.rpm
        #> yum install vlc
        #> yum install vlc-core             # (for minimal headless/server install)
        #> yum install python-vlc npapi-vlc # (optionals)

Red Hat/CentOS/Scientific Linux 6: (vlc-2.0.x branch – available for i686 and x86_64 architectures)

.. code-block::

    $> su -
        #> yum install https://dl.fedoraproject.org/pub/epel/epel-release-latest-6.noarch.rpm
        #> yum install https://download1.rpmfusion.org/free/el/rpmfusion-free-release-6.noarch.rpm
        #> yum install vlc
        #> yum install vlc-core             # (for minimal headless/server install)
        #> yum install python-vlc npapi-vlc # (optionals)