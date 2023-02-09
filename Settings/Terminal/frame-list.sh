#!/usr/bin/env bash

for i in $(seq 9472 9599); do
    printf "\u$(printf %x "$i")"
done
