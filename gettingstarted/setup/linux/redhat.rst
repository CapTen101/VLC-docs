.. _redhat:

Red Hat
=======

RHEL/CentOS/Scientific Linux have almost the same setups (they're all derived from RHEL). RHEL and derivatives have different instructions if EPEL (Extra Packages for Enterprise Linux) is not set up. Red Hat Network (RHN) users should verify that they have enabled the optionals and extras channels for RHN subscriptions.
See also `EPEL <https://fedoraproject.org/wiki/EPEL>`_.

For the latest version (up to the now-current version 3.0.x) use RPM Fusion:
See also the `Configuration <https://rpmfusion.org/Configuration>`_.

Please report "packaging bugs" on `Bugzilla <https://bugzilla.rpmfusion.org/>`_.

If you want to have DVD playback ability, you will need to install the libdvdcss package too.


RHEL/CentOS 8: (vlc-3.0.x - available for x86_64, aarch64 and ppc64le architectures)

.. code-block::

    $> su -
        # Only for RHEL7 (not needed on CentOS):
        #> subscription-manager repos --enable "codeready-builder-for-rhel-8-*-rpms"
        # Only for CentOS7 (not needed on RHEL):
        #> yum config-manager --enable PowerTools # Only for CentOS
        # For all:
        #> yum install https://dl.fedoraproject.org/pub/epel/epel-release-latest-8.noarch.rpm
        #> yum install https://download1.rpmfusion.org/free/el/rpmfusion-free-release-8.noarch.rpm
        #> yum install vlc
        #> yum install vlc-core             # (for minimal headless/server install)
        #> yum install python-vlc npapi-vlc # (optionals)
        #> yum install rpmfusion-free-release-tainted # to access tainted repository (optional)
        #> yum install libdvdcss            # (for DVD Playback)


RHEL/CentOS/Scientific Linux 7: (vlc-3.0.x - available for x86_64 architectures)

.. code-block::

    $> su -
        # Only for RHEL7 (not needed on CentOS):
        #> subscription-manager repos --enable "rhel-*-optional-rpms" --enable "rhel-*-extras-rpms"  --enable "rhel-ha-for-rhel-*-server-rpms"
        # For all:
        #> yum install https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
        #> yum install https://download1.rpmfusion.org/free/el/rpmfusion-free-release-7.noarch.rpm
        #> yum install vlc
        #> yum install vlc-core             # (for minimal headless/server install)
        #> yum install python-vlc npapi-vlc # (optionals)
        #> yum install rpmfusion-free-release-tainted # to access tainted repository (optional)
        #> yum install libdvdcss            # (for DVD Playback)


RHEL/CentOS/Scientific Linux 6: (vlc-2.0.x - available for i686 and x86_64 architectures)

.. code-block::

    $> su -
        #> yum install https://dl.fedoraproject.org/pub/epel/epel-release-latest-6.noarch.rpm
        #> yum install https://download1.rpmfusion.org/free/el/rpmfusion-free-release-6.noarch.rpm
        #> yum install vlc
        #> yum install vlc-core             # (for minimal headless/server install)
        #> yum install python-vlc npapi-vlc # (optionals)
        #> yum install rpmfusion-free-release-tainted # to access tainted repository (optional)
        #> yum install libdvdcss            # (for DVD Playback)
