#!/bin/bash

# Install files in /install and some in /doc
# 26-dec-99 changes for i386 (2.2.x) bootdisks --jwest
# 11-mar-00 added sparc to boot-disk documentation test  --jwest

set -e

BDIR=$TDIR/$CODENAME-$ARCH

DOCDIR=doc

# Put the install documentation in /install
cd $BDIR/1/dists/$CODENAME/main/disks-$ARCH/current/$DOCDIR
mkdir $BDIR/1/install/$DOCDIR
cp -a * $BDIR/1/install/$DOCDIR/
ln -sf install.en.html $BDIR/1/install/$DOCDIR/index.html

# Put the boot-disk documentation in /doc too
mkdir $BDIR/1/doc/install
cd $BDIR/1/doc/install
for file in ../../install/$DOCDIR/*.{html,txt}
do
	ln -s $file
done

