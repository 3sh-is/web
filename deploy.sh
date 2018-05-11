#!/usr/bin/env bash

cp -R ./dist/* ../3sh-is.github.io/
cd ../3sh-is.github.io/
git add .
git commit -am "Publish"
git push
