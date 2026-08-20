#!/usr/bin/env bash
# Exit on error
set -e

echo "Creating a temporary file for variable injection..."

# Create a temporary file with replacements, then overwrite the original.
# This is often more reliable in build environments than in-place editing.
sed \
-e 's|__FIREBASE_API_KEY__|'"$FIREBASE_API_KEY"'|g' \
-e 's|__FIREBASE_AUTH_DOMAIN__|'"$FIREBASE_AUTH_DOMAIN"'|g' \
-e 's|__FIREBASE_PROJECT_ID__|'"$FIREBASE_PROJECT_ID"'|g' \
-e 's|__FIREBASE_STORAGE_BUCKET__|'"$FIREBASE_STORAGE_BUCKET"'|g' \
-e 's|__FIREBASE_MESSAGING_SENDER_ID__|'"$FIREBASE_MESSAGING_SENDER_ID"'|g' \
-e 's|__FIREBASE_APP_ID__|'"$FIREBASE_APP_ID"'|g' \
-e 's|__CLOUDINARY_CLOUD_NAME__|'"$CLOUDINARY_CLOUD_NAME"'|g' \
-e 's|__CLOUDINARY_UPLOAD_PRESET__|'"$CLOUDINARY_UPLOAD_PRESET"'|g' \
index.html > index.tmp.html

echo "Replacing original index.html with the new version..."
mv index.tmp.html index.html

echo "Injection complete."

