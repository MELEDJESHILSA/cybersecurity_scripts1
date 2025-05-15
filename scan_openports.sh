#!/bin/bash
TARGET="localhost"
PORTS="22,80,443"
echo "Scan des ports sur $TARGET..."
nmap -p $PORTS $TARGET
<<<<<<< HEAD
echo 'Scan completed.'
=======
echo 'Scan terminé.'
>>>>>>> feature/scan-openports
