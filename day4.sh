#!/bin/bash

FILE="/tmp/xfusioncorp.sh"

if [ -f "$FILE" ]; then
    sudo chmod a+x "$FILE"
    ls -l "$FILE"
else
    echo "Error: $FILE not found"
    exit 1
fi

