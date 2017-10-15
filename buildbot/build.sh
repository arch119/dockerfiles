#!/bin/sh

VERSION=1.0
REPO=arch119shambhu
IMG=buildbot
TAG=$REPO/$IMG:$VERSION

docker build -t $TAG .