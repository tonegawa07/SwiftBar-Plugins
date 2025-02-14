#!/bin/bash

export PATH="/opt/homebrew/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"

COLIMA_PATH=$(which colima)

STATUS=$($COLIMA_PATH status 2>&1)

if echo "$STATUS" | grep -q "colima is running"; then
    echo "🐳"
    echo "---"
    echo "🟢 Colima is running"
    echo "⏹️ Stop Colima | bash=\"$COLIMA_PATH\" param1=\"stop\" terminal=false refresh=true"
    echo "🔄 Restart Colima | bash=\"$COLIMA_PATH\" param1=\"restart\" terminal=false refresh=true"
else
    echo "🌊"
    echo "---"
    echo "🔴 Colima is stopped"
    echo "▶️ Start Colima | bash=\"$COLIMA_PATH\" param1=\"start\" terminal=false refresh=true"
fi
