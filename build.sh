#!/usr/bin/env bash

MYDIR=$(cd $(dirname $0) && pwd)
ARTIFACTS="$MYDIR/artifacts"
NAME=bootstrap-custom.zip

grunt
mkdir -p "$ARTIFACTS"
rm -f "$ARTIFACTS/$NAME"

pushd $MYDIR/dist
zip -r $ARTIFACTS/$NAME css fonts
popd
