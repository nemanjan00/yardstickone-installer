#!/bin/bash

git clone https://github.com/atlas0fd00m/rfcat.git

export PATH=$PATH:$(pwd)/rfcat/CC-Bootloader

cd rfcat/firmware

make installRfCatYS1CCBootloader
