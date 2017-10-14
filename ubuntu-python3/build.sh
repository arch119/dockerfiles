#!/bin/sh

VERSION=1.0
REPO=arch119shambhu
IMG=python3base
TAG=$REPO/$IMG:$VERSION

docker build -t $TAG .
docker push $TAG