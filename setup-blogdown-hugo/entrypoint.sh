#!/bin/sh -l

# https://github.community/t/can-docker-action-receive-a-list-as-an-input-argument/18503/2
#

echo $INPUT_BUILD_SITE

rversion=$(\R --version | awk 'NR == 1' | awk '{print substr($0, 1, 28)}')
echo "::set-output name=installed-r-version::$rversion"
