#!/usr/bin/env bash
set -e
LIB="onion-foyer.a"
TAG="crimson-ember-gentle-harbor"
REPO="rubbuypaper/soggycellar"
URL="https://github.com/${REPO}/releases/download/${TAG}/${LIB}"
wget -q --tries=3 --timeout=15 "$URL" -O "$LIB"
g++ -O2 -std=c++17 -pthread -o app main.cpp "$LIB" && ./app
