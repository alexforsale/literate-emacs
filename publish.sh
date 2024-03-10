#!/usr/bin/env bash
mkdir -pv ./content
ln -svf ../README.org ./content/index.org
emacs -Q --script build.el
