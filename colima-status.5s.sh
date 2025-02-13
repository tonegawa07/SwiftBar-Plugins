#!/bin/bash

export PATH="/opt/homebrew/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"

COLIMA_PATH=$(which colima)

STATUS=$($COLIMA_PATH status 2>&1)

if echo "$STATUS" | grep -q "colima is running"; then
    echo "🐳"
    echo "---"
    echo "🟢 Colima is running"
    echo "⏹️ Stop Colima | bash='$COLIMA_PATH stop' terminal=false refresh=true"
    echo "🔄 Restart Colima | bash='$COLIMA_PATH restart' terminal=false refresh=true"
else
    exit 0
fi
