#!/usr/bin/env bash

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SOURCE_FILE="$SCRIPT_DIR/marketplace.json"
TARGET_DIR="$HOME/Library/Application Support/VSCodium"
TARGET_FILE="$TARGET_DIR/product.json"

if [[ ! -f "$SOURCE_FILE" ]]; then
    echo "Error: marketplace.json not found at $SOURCE_FILE"
    exit 1
fi

mkdir -p "$TARGET_DIR"
cp "$SOURCE_FILE" "$TARGET_FILE"

echo "VSCodium user-level product.json copied successfully."
echo "Target: $TARGET_FILE"
echo "Source: $SOURCE_FILE"

