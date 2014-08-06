#!/bin/bash

NAME="trusty-64"

rm -rf output-* packer_cache *.box
packer build template.json
vagrant box remove $NAME
vagrant box add $NAME packer_$NAME_vmware.box
