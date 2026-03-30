#!/bin/bash
# Script 2: FOSS Package Inspector (Python Version)

# Set the package to check (usually python3 on most systems)
PACKAGE="python3"

echo "Checking package: $PACKAGE"
echo "--------------------------"

# Check if Python is installed
if command -v $PACKAGE &> /dev/null; then
    echo "Python is installed."

    # Show version
    $PACKAGE --version

    # Show path
    echo "Location: $(which $PACKAGE)"
else
    echo "Python is NOT installed."
fi

# Case statement for descriptions
case $PACKAGE in
    code) echo "VS Code: a lightweight, extensible open-source editor" ;;
    git) echo "Git: version control system built for collaboration" ;;
    nginx) echo "Nginx: high-performance web server" ;;
    python|python3) echo "Python: powerful open-source programming language" ;;
    *) echo "Unknown package" ;;
esac
