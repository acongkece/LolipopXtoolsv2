#!/bin/bash

clear
figlet LolipopXtools
echo "Pilih Menu:"
echo "1. Traker No"                 echo "5. tiktok scrape"
echo "2. Find User"                 echo "6. Track Nik"
echo "3. ddos website"              echo "7. getnik"
echo "4. Instagram Scrape"          echo
echo "0. Keluar"

read -p "Masukkan pilihan Anda: " choice

case $choice in
  1)
    bash Trackno.sh
    ;;
  2)
    bash osint1.sh
    ;;
  3)
    node ddos.js
    ;;
  4)
    bash ig.sh
    ;;
  5)
    bash tiktok.sh
    ;;
  6)
    bash nik.sh
    ;;
  0)
    echo "Keluar..."
    exit 0
    ;;
  *)
    echo "Pilihan tidak valid!"
    ;;
esac
