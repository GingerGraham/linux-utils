#!/bin/bash

# File: /usr/local/bin/view_logs.sh

# Check if two arguments are provided
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <duration> <tag>"
    exit 1
fi

# Assign arguments to variables
DURATION=$1
TAG=$2

# Use journalctl to view logs from the specified duration
journalctl -t $TAG --since "$DURATION ago"
