#!/bin/bash

# Variables
REPO_URL="git@gitlab.vcat.de:vcat/manjaro-ansible.git"
BRANCH="awesomewm"
TARGET_DIR="ansible"

# Remove existing folder content
rm -rf "$TARGET_DIR"
mkdir -p "$TARGET_DIR"

# Clone and checkout
git clone --branch "$BRANCH" --single-branch "$REPO_URL" "$TARGET_DIR"
rm -rf "$TARGET_DIR/.git"
rm "$TARGET_DIR/.gitignore"

