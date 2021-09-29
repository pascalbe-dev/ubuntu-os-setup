#!/usr/bin/env bash

export DOWNLOAD_URL="https://downloads.camunda.cloud/release/camunda-modeler/4.10.0/camunda-modeler-4.10.0-linux-x64.tar.gz"
export TARGET_PATH=$HOME/tools/camunda-modeler

# download it
wget $DOWNLOAD_URL -O result.tar.gz

# prepare it
mkdir -p $TARGET_PATH
tar -xf result.tar.gz -C $TARGET_PATH

# cleanup
rm -rf result.tar.gz

# add to PATH
echo "export PATH=$PATH:$TARGET_PATH/camunda-modeler-4.10.0-linux-x64" >> $HOME/.zshenv