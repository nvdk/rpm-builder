#!/bin/bash

# set up rpm structure
mkdir -p /home/rpmbuild/{BUILD,RPMS,SOURCES,SPECS,SRPMS} && echo '%_topdir /home/rpmbuild' > /home/rpmbuild/.rpmmacros

# parse arguments
pushd /home/rpmbuild/SPECS && rpmbuild -ba *.spec && popd
