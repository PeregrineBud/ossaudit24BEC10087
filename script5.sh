#!/bin/bash
# Script 5: Open Source Manifesto Generator

echo "Answer three questions to generate your manifesto."

read -p "1. Tool you use daily: " TOOL
read -p "2. Freedom means: " FREEDOM
read -p "3. What will you build: " BUILD

DATE=$(date '+%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"

echo "On $DATE, I believe in open source." > $OUTPUT
echo "I use $TOOL daily and value $FREEDOM." >> $OUTPUT
echo "In the future, I want to build $BUILD and share it freely." >> $OUTPUT

echo "Manifesto saved to $OUTPUT"
cat $OUTPUT
