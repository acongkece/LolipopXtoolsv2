#!/bin/bash

function track_tiktok() {
    echo "Masukkan username TikTok:"
    read username
    url="https://www.tiktok.com/@$username"
    
    profile_page=$(curl -s $url)
    
    followers=$(echo "$profile_page" | grep -oP '"followerCount":\K\d+')
    likes=$(echo "$profile_page" | grep -oP '"heartCount":\K\d+')
    videos=$(echo "$profile_page" | grep -oP '"videoCount":\K\d+')
    
    echo "Informasi Profil TikTok untuk @$username:"
    echo "Pengikut: $followers"
    echo "Suka: $likes"
    echo "Video: $videos"
}

track_tiktok
