#!/usr/bin/env bash

url=$1
project=$2
repo=$3
branch=$4

$COMMAND_BROWSER_OPEN "$url/projects/$project/repos/$repo/pull-requests?create&sourceBranch=$branch&targetBranch=master"
