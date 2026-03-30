#!/bin/bash
# Script 5: Python Developer Manifesto Generator

echo "Answer three questions to generate your Python manifesto."
echo ""

# Taking input
read -p "1. Your favorite Python library (e.g., NumPy, Pandas, PyTorch): " LIBRARY
read -p "2. One word for the Python community: " COMMUNITY_WORD
read -p "3. A Python project you want to build: " PROJECT

DATE=$(date '+%d %B %Y')
USER=$(whoami)
OUTPUT="python_manifesto_$USER.txt"

# Creating manifesto
echo "The Python Developer Manifesto" > $OUTPUT
echo "Date: $DATE" >> $OUTPUT
echo "Author: $USER" >> $OUTPUT
echo "" >> $OUTPUT
echo "I leverage $LIBRARY to solve complex problems and write clean, readable code." >> $OUTPUT
echo "To me, the Python ecosystem is defined by $COMMUNITY_WORD." >> $OUTPUT
echo "In the future, I aim to build $PROJECT using Python's open-source power." >> $OUTPUT
echo "I believe that 'Beautiful is better than ugly' and open code drives the world." >> $OUTPUT

echo ""
echo "Your Python Manifesto has been saved to: $OUTPUT"
echo "--------------------------"
cat $OUTPUT
