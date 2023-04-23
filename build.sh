#!/bin/bash

source ./env.sh

BUILD="../libcore_build"

rm -rf $BUILD/android \
  $BUILD/java \
  $BUILD/javac-output \
  $BUILD/src

gomobile bind -v -ldflags='-s -w -buildid=' . || exit 1

proj=../v2rayNG/V2rayNG/app/libs/
if [ -d $proj ]; then
  cp -f libv2ray.aar $proj
  echo ">> install $(realpath $proj)/libv2ray.aar"
fi
