#!/bin/bash
LOG_FILE="/var/log/auth.log"
echo "Analyse des logs dans $LOG_FILE..."
grep "Failed password" $LOG_FILE | tail -n 10
