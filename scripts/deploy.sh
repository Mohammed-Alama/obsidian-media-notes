#!/bin/bash

# Set your vault path
VAULT_PATH="/Users/mohammedalama/Library/Mobile Documents/iCloud~md~obsidian/Documents/Alama"
PLUGIN_PATH="$VAULT_PATH/.obsidian/plugins/obsidian-media-note"

# Build the plugin
echo "Building plugin..."
npm run build

# Create plugin directory if it doesn't exist
mkdir -p "$PLUGIN_PATH"

# Copy required files
echo "Copying files to vault..."
cp main.js "$PLUGIN_PATH/"
cp manifest.json "$PLUGIN_PATH/"

# Copy styles.css if it exists
if [ -f "styles.css" ]; then
    cp styles.css "$PLUGIN_PATH/"
fi

echo "Plugin deployed to $PLUGIN_PATH"
echo "Now reload Obsidian to see changes!"
