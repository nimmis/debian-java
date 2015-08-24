#!/bin/bash

PACKAGE=`curl http://ftp.us.debian.org/debian/pool/main/o/openjdk-8/ | grep amd64.deb | grep 8-$1 | tail -1 | sed -n 's/.*href="\([^"]*\).*/\1/p'`
curl http://ftp.us.debian.org/debian/pool/main/o/openjdk-8/$PACKAGE -o $PACKAGE
dpkg -i --force-depends $PACKAGE
apt-get -f install -y
rm $PACKAGE

