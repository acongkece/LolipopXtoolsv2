#!/bin/bash

# Fungsi untuk melacak informasi profil TikTok
function track_tiktok() {
    echo "Masukkan username TikTok:"
    read username
    url="https://www.tiktok.com/@$username"
    
    # Ambil halaman profil TikTok
    profile_page=$(curl -s $url)
    
    # Ekstrak informasi dasar
    followers=$(echo "$profile_page" | grep -oP '"followerCount":\K\d+')
    likes=$(echo "$profile_page" | grep -oP '"heartCount":\K\d+')
    videos=$(echo "$profile_page" | grep -oP '"videoCount":\K\d+')
    
    echo "Informasi Profil TikTok untuk @$username:"
    echo "Pengikut: $followers"
    echo "Suka: $likes"
    echo "Video: $videos"
}

# Panggil fungsi track_tiktok langsung
track_tiktok
