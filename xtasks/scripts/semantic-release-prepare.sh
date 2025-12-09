#!/bin/bash
set -e

echo "🚀 Running semantic-release prepare script..."

# Get the new version from command line argument
NEW_VERSION="$1"

if [ -z "$NEW_VERSION" ]; then
    echo "❌ Error: NEW_VERSION is not provided as first argument. This script should be run by semantic-release."
    exit 1
fi

echo "📝 Updating version to: $NEW_VERSION"
echo "$NEW_VERSION" > VERSION
cargo set-version "$NEW_VERSION"

echo "✅ Updated VERSION file and Cargo.toml"
echo "🎉 All packages updated to $NEW_VERSION!" 
