#!/bin/bash

# - install depends tools
# yum -y install git
# yum -y install gcc gcc-c++ autoconf libtool automake make
yum -y install gettext gcc autoconf libtool automake make asciidoc xmlto c-ares-devel libev-devel
#

# - clone code
# git clone https://github.com/brinkqiang/dmrinetd.git
# pushd dmrinetd
# git submodule update --init --recursive
#

libtoolize && aclocal && autoheader && autoconf && automake --add-missing
sh configure
make
make install

cp ./rinetd.conf /usr/local/etc/rinetd.conf
# vim /etc/rc.d/rc.local
# rinetd -c /usr/local/etc/rinetd.conf &
# vim /usr/local/etc/rinetd.conf

# popd

# echo continue && read -n 1
