#!/usr/bin/env bash

export OPENSHIFT_CLI_DOWNLOAD_URL="https://github.com/openshift/origin/releases/download/v3.11.0/openshift-origin-client-tools-v3.11.0-0cbc58b-linux-64bit.tar.gz"
export FILE_NAME=openshift-cli.tar.gz
export TARGET_PATH=$HOME/tools/openshift-cli

# download cli tool
wget -O $FILE_NAME $OPENSHIFT_CLI_DOWNLOAD_URL

# extract it
mkdir -p $TARGET_PATH
tar -xvzf $FILE_NAME -C $TARGET_PATH --strip-components 1

# remove downloaded archive
rm -rf $FILE_NAME

# add to PATH
echo "export PATH=$PATH:$TARGET_PATH" >> $HOME/.zshenv