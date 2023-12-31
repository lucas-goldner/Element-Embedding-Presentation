#!/bin/bash

# Paths relative to the script's location
SOURCE_DIR="../fluttershow_app/"
BUILD_DIR="../fluttershow_app/build/web/"
DESTINATION_DIR="./public/flutter"
MAIN_DART_FILE="$DESTINATION_DIR/main.dart.js"
FLUTTER_FILE="$DESTINATION_DIR/flutter.js"

# Navigate to the SOURCE_DIR and run steps to build the flutter web app
cd "$SOURCE_DIR"
flutter pub run intl_utils:generate
flutter build web --profile --dart-define=Dart2jsOptimization=O0

# Check for any errors during the flutter build
if [ $? -ne 0 ]; then
    echo "Error: Failed to build flutter web app in $SOURCE_DIR"
    exit 1
fi

# Change directory back to the script's location
cd - 

# Check if the build directory exists
if [ ! -d "$BUILD_DIR" ]; then
    echo "Error: Source directory $BUILD_DIR does not exist."
    exit 1
fi

# Remove the old flutter directory if it exists
if [ -d "$DESTINATION_DIR" ]; then
    echo "Removing old flutter directory..."
    rm -rf "$DESTINATION_DIR"
fi

# Copy the source to the destination
echo "Copying $BUILD_DIR to $DESTINATION_DIR..."
cp -r "$BUILD_DIR" "$DESTINATION_DIR"

# Check for any errors during the copy
if [ $? -ne 0 ]; then
    echo "Error: Failed to copy $BUILD_DIR to $DESTINATION_DIR"
    exit 1
fi

# Modify the flutter/main.dart.js file
if [ -f "$MAIN_DART_FILE" ]; then
    echo "Modifying $JS_FILE..."
    sed -i '' 's|t1 = this._assetBase;|t1 = "/flutter/";|g' "$MAIN_DART_FILE"
else
    echo "Warning: $MAIN_DART_FILE does not exist. Skipping modification."
fi

if [ -f "$FLUTTER_FILE" ]; then
    echo "Modifying $FLUTTER_FILE..."

    # Remove the specific line
    sed -i '' '/const base = document.querySelector("base");/d' "$FLUTTER_FILE"

    # # Replace the specific line
    sed -i '' 's|return (base && base.getAttribute("href")) \|\| "";|return "/flutter/";|g' "$FLUTTER_FILE"

else
    echo "Warning: $FLUTTER_FILE does not exist. Skipping modification."
fi

echo "Updated ✨"