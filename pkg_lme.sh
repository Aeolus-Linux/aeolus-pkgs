#!/usr/bin/env bash

## This script will generate aeolus pkg-files.

## Dirs
DIR="$(pwd)"
PKGDIR="$DIR/aeolus-pkgs"

## Packages
PKGS=($(ls $PKGDIR))
