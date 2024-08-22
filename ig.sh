#!/bin/bash

# Fungsi untuk melacak informasi profil Instagram
function track_instagram() {
    echo "Masukkan username Instagram:"
    read username
    url="https://www.instagram.com/$username/"
    
    # Ambil halaman profil Instagram
    profile_page=$(curl -s $url)
    
    # Ekstrak informasi dasar
    followers=$(echo "$profile_page" | grep -oP '"edge_followed_by":{"count":\K\d+')
    following=$(echo "$profile_page" | grep -oP '"edge_follow":{"count":\K\d+')
    posts=$(echo "$profile_page" | grep -oP '"edge_owner_to_timeline_media":{"count":\K\d+')
    
    echo "Informasi Profil Instagram untuk @$username:"
    echo "Pengikut: $followers"
    echo "Mengikuti: $following"
    echo "Postingan: $posts"
}

# Panggil fungsi track_instagram langsung
track_instagram
