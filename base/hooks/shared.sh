#!/bin/sh

echo "Branch/Tag: $SOURCE_BRANCH"

set -o nounset
set -o errexit

TAG_POSTFIX=""
TAG_BASE=""
if [ "$SOURCE_BRANCH" = "master" ]; then
	TAG_BASE="latest"
	TAG_POSTFIX=""
else
	TAG_BASE="latest2"
	TAG_POSTFIX="_develop"
fi

# current workdir is /base
cd ..
