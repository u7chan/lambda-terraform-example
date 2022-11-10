#!/bin/bash

set -ex

PATH=$PATH:./node_modules/.bin
tsc
zip -j -r ./dist.zip dist
rm -rf dist
