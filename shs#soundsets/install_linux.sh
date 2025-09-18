#!/bin/sh

echo "Installing PC Soundsets"
for dir in soundsets/*
do
  for path in $dir/*
  do
    file=${path#$dir}
    sox $path ../sounds${file%.ogg}.wav
  done
done