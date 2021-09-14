#!/usr/bin/env bash

set -e

git clone https://github.com/apple/swift.git swift-project/swift

./swift-project/swift/utils/update-checkout --tag swift-5.4.3-RELEASE --clone
