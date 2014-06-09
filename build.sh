#!/bin/bash

rm -rf output-* packer_cache *.box
packer build template.json
vagrant box add trusty-64 packer_ubuntu-14_vmware.box
