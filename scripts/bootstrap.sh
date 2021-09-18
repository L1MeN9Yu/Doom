#!/usr/bin/env bash

set -e

SWIFT_TAG="swift-5.4.3-RELEASE"

function clone(){
    git clone https://github.com/apple/swift.git swift-project/swift
    git clone https://github.com/nlohmann/json.git dependencies/json
}

function checkout(){
    ./swift-project/swift/utils/update-checkout --tag $1 --clone
}


if [ "$#" -eq 0 ] ; then
  clone
  checkout "$SWIFT_TAG"
else
  checkout "$1" 
fi
