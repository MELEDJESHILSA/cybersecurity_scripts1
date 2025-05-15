#!/bin/bash
LOG_FILE="/var/log/auth.log"
THRESHOLD=5
echo "Détection des tentatives de brute force..."
grep "Failed password" $LOG_FILE | awk "{print \$NF}" | sort | uniq -c | while read count ip; do
    if [ \$count -gt \$THRESHOLD ]; then
        echo "Possible brute force depuis \$ip (\$count tentatives)"
    fi
done
