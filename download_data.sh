#!/bin/bash
# UI/UX Pro Max - Complete Data Download Script
# This script downloads all remaining data files from the upstream repository
# Run this after cloning to get the full dataset (~3.1MB)

set -e

SKILL_DIR="$(cd "$(dirname "$0")" && pwd)"
DATA_DIR="$SKILL_DIR/data"
UPSTREAM_REPO="https://raw.githubusercontent.com/nextlevelbuilder/ui-ux-pro-max-skill/main/src/ui-ux-pro-max/data"

echo "=== UI/UX Pro Max - Data Download ==="
echo "Target directory: $DATA_DIR"
echo ""

# Create data directory if not exists
mkdir -p "$DATA_DIR/stacks"

# Core data files (large)
CORE_FILES=(
    "styles.csv"
    "ui-reasoning.csv"
    "products.csv"
    "icons.csv"
    "typography.csv"
)

# Stack framework files
STACK_FILES=(
    "threejs.csv"
    "javafx.csv"
    "uno.csv"
    "winui.csv"
    "avalonia.csv"
    "uwp.csv"
    "wpf.csv"
    "nuxt-ui.csv"
    "shadcn.csv"
    "nuxtjs.csv"
    "laravel.csv"
    "angular.csv"
    "react.csv"
    "nextjs.csv"
    "html-tailwind.csv"
    "swiftui.csv"
    "svelte.csv"
    "astro.csv"
    "flutter.csv"
    "react-native.csv"
    "vue.csv"
    "jetpack-compose.csv"
)

# Large catalog files
CATALOG_FILES=(
    "google-fonts.csv"
    "google-font-licenses.json"
    "phosphor-icons-upstream.json"
)

download_file() {
    local remote_path="$1"
    local local_path="$2"
    local url="$UPSTREAM_REPO/$remote_path"
    
    echo "Downloading: $remote_path"
    if curl -fsSL "$url" -o "$local_path"; then
        echo "  ✓ Saved to $local_path ($(wc -c < "$local_path") bytes)"
    else
        echo "  ✗ Failed to download $remote_path"
        return 1
    fi
}

echo "--- Downloading core data files ---"
for file in "${CORE_FILES[@]}"; do
    download_file "$file" "$DATA_DIR/$file"
done

echo ""
echo "--- Downloading stack framework files ---"
for file in "${STACK_FILES[@]}"; do
    download_file "stacks/$file" "$DATA_DIR/stacks/$file"
done

echo ""
echo "--- Downloading large catalog files ---"
for file in "${CATALOG_FILES[@]}"; do
    download_file "$file" "$DATA_DIR/$file"
done

echo ""
echo "=== Download Complete ==="
echo "Total data files: $(find "$DATA_DIR" -type f | wc -l)"
echo "Total size: $(du -sh "$DATA_DIR" | cut -f1)"
echo ""
echo "To verify data integrity, run:"
echo "  cd scripts && python3 validate_data.py"