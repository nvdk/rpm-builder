#!/bin/bash

# set up rpm structure
su rpmbuild -l -c "mkdir -p /home/rpmbuild/{BUILD,RPMS,SOURCES,SPECS,SRPMS} && echo '%_topdir /home/rpmbuild' > /home/rpmbuild/.rpmmacros"

# parse arguments
su rpmbuild -l -c "pushd /home/rpmbuild/SPECS && rpmbuild -ba lodms.spec && popd"
