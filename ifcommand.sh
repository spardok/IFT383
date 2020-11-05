#!/bin/bash
if [ `who | cut -f1 -d " " | sort -u | grep -Ew "$1"` ]; then
    echo "Yes"
else
    echo "No"
fi
