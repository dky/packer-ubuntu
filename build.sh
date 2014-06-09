#!/bin/bash

rm -rf output-* packer_cache *.box
packer build template.json
