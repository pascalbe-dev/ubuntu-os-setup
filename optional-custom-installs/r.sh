#!/usr/bin/env bash

# use CRAN repository to get the latest version
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E298A3A825C0D65DFD57CBB651716619E084DAB9
sudo add-apt-repository 'deb https://cloud.r-project.org/bin/linux/ubuntu focal-cran40/'

# install R programming language
sudo apt install -y r-base

# install custom installer tool which the R team proposes
sudo apt install -y gdebi-core

# extra unix utility for the "car" r package
sudo apt install -y libcurl4-openssl-dev

# fetch and install r studio
# TODO: DO NOT PIN THE VERSION -> USE LATEST
wget https://download2.rstudio.org/server/bionic/amd64/rstudio-server-1.3.1093-amd64.deb -O rstudio.deb
sudo gdebi rstudio.deb

# delete installation file
rm -rf rstudio.deb
