#!/bin/sh

set -e

export BROKEN=1
export GLUON_AUTOREMOVE=1
export GLUON_DEPRECATED=1
export GLUON_SITEDIR="./site/"
export GLUON_TARGET=$1
export BUILD_LOG=1

echo "Baue Target: "$GLUON_TARGET
echo "make -C gluon update"
make -C gluon update >> logs/$GLUON_TARGET.log
echo "make -C gluon V=s"
make -C gluon  V=s >> logs/$GLUON_TARGET.log
ls -l
cd gluon/output
ls -l
