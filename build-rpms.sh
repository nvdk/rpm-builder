#!/bin/bash

# set up rpm structure
mkdir -p /root/rpmbuild/{BUILD,RPMS,SOURCES,SPECS,SRPMS} && echo '%_topdir /root/rpmbuild' > /root/.rpmmacros

# parse arguments
pushd /root/rpmbuild/SPECS && rpmbuild -ba *.spec && popd
