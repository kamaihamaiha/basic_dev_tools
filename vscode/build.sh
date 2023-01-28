#!/bin/zsh

clang -g -o demo demo.c `pkg-config --libs --cflags libavutil`