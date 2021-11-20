#!/bin/bash
# adaptation of install instructions on https://golang.org/doc/install

set -euxo pipefail

VERSION="1.17.3"

# download new version
echo "Downloading GO version ${VERSION}"

wget "https://golang.org/dl/go${VERSION}.linux-amd64.tar.gz"

# remove old version of go
sudo rm -rf /usr/local/go

# untar file
sudo tar -C /usr/local -xzf "go${VERSION}.linux-amd64.tar.gz"

# remove download file
rm "go${VERSION}.linux-amd64.tar.gz"