#!/usr/bin/env bash

user=$1
repo=$2
branch=$3

$COMMAND_BROWSER_OPEN "https://github.com/$user/$repo/compare/main...$branch"