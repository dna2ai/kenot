#!/bin/bash


SELF=$(cd `dirname $0`; pwd)

if [ ! -d $SELF/local/src/github.com/dna2ai ]; then
   mkdir -p $SELF/local/src/github.com/dna2ai
   pushd $SELF/local/src/github.com/dna2ai
   ln -s ../../../.. kenot
   popd
fi

pushd $SELF/local
GOPATH=`pwd` go install github.com/dna2ai/kenot/cmd/kenot-webserver
popd
