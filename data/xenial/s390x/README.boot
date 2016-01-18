About the S/390 installation CD
===============================

It is possible to "boot" the installation system off this CD using
the files provided in the /boot directory.

Although you can boot the installer from this CD, the installation
itself is *not* actually done from the CD. Once the initrd is loaded,
the installer will ask you to configure your network connection and
uses the network-console component to allow you to continue the
installation over SSH. The rest of the installation is done over the
network: all installer components and Debian packages are retrieved
from a mirror.

Exporing a full .iso contents (including hidden .disk directories)
allows one to use the .iso image as a valid mirror for installation.
