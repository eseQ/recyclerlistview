#!/usr/bin/env bash
set -e

TARGET=$"$(PWD)/package/dist" #target-path

npm run build

echo "copying build..."
echo "copying to $TARGET.."
rm -rf "$TARGET"
cp -r dist "$TARGET"

echo "copy complete."
