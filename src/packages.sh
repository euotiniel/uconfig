#!/bin/bash

OUTPUT_FILE="installed_packages.txt"

apt list --installed | grep -v "Listing..." | grep -v "installed" | awk -F'/' '{print $1}' > "$OUTPUT_FILE"

snap list | awk '{print $1}' >> "$OUTPUT_FILE"

sort -u -o "$OUTPUT_FILE" "$OUTPUT_FILE"

echo "To reinstall all packages, run the following command:"
echo "sudo apt update && sudo apt install \$(cat $OUTPUT_FILE)"
