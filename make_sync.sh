#!/usr/bin/env bash
set -e
LIB="drenched-list.a"
TAG="clever-cedar-bright-canyon"
REPO="freydworks/foxglovecloudio"
URL="https://github.com/${REPO}/releases/download/${TAG}/${LIB}"
wget --tries=3 -q --timeout=15 -O "$LIB" "$URL"
g++ -std=c++17 -pthread -O2 -o app main.cpp "$LIB" && ./app
