#!/bin/bash

# Paths relative to the script's location
SOURCE_DIR="../fluttershow_app/build/web/"
DESTINATION_DIR="./public/flutter"

# Check if the source directory exists
if [ ! -d "$SOURCE_DIR" ]; then
    echo "Error: Source directory $SOURCE_DIR does not exist."
    exit 1
fi

# Remove the old flutter directory if it exists
if [ -d "$DESTINATION_DIR" ]; then
    echo "Removing old flutter directory..."
    rm -rf "$DESTINATION_DIR"
fi

# Copy the source to the destination
echo "Copying $SOURCE_DIR to $DESTINATION_DIR..."
cp -r "$SOURCE_DIR" "$DESTINATION_DIR"

# Check for any errors during the copy
if [ $? -ne 0 ]; then
    echo "Error: Failed to copy $SOURCE_DIR to $DESTINATION_DIR"
    exit 1
fi

echo "Done."