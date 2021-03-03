#!/usr/bin/env bash

export MINIO_CLI_DOWNLOAD_URL="https://dl.min.io/client/mc/release/linux-amd64/mc"
export TARGET_PATH=$HOME/tools/minio-client

# download it
wget $MINIO_CLI_DOWNLOAD_URL

# make it executable
chmod +x mc

# move it to the correct location
mkdir -p $TARGET_PATH
mv mc $TARGET_PATH


# add to PATH
echo "export PATH=$PATH:$TARGET_PATH" >> $HOME/.zshenv