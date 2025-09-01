#!/bin/bash
source="desktop/folder1/folder2"
dest="desktop/backup/folder1"
mkdir -p "$dest"
cp -r "$source" "$dest"
echo" "
