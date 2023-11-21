#!/bin/bash

# Define the paths to the desktop files
thunar_desktop="/usr/share/applications/thunar.desktop"
featherpad_desktop="/usr/share/applications/featherpad.desktop"

# Function to modify a desktop file
modify_desktop_file() {
    desktop_file=$1

    # Replace the Exec= line to run the application with pkexec
    sed -i 's/^Exec=.*/Exec=pkexec &/' $desktop_file
}

# Modify the Thunar and FeatherPad desktop files
modify_desktop_file $thunar_desktop
modify_desktop_file $featherpad_desktop

echo "The desktop files have been modified."
