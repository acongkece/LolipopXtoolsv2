#!/bin/bash

read -p "Masukkan username: " username

sites=(
    "https://www.github.com/$username"
    "https://www.twitter.com/$username"
    "https://www.instagram.com/$username"
    "https://www.linkedin.com/in/$username"
    "https://www.facebook.com/$username"
    "https://www.tiktok.com/$username"
    "https://www.id.pinterest.com/$username"
    "https://www.facebook.com/$username"
    "https://www.twitter.com/$username"
    "https://www.instagram.com/$username"
    "https://www.linkedin.com/$username"
    "https://www.github.com/$username"
    "https://www.pinterest.com/$username"
    "https://www.tumblr.com/$username"
    "https://www.youtube.com/$username"
    "https://soundcloud.com/$username"
    "https://www.snapchat.com/$username"
    "https://www.tiktok.com/$username"
    "https://www.behance.net/$username"
    "https://www.medium.com/$username"
    "https://www.quora.com/$username"
    "https://www.flickr.com/$username"
    "https://www.periscope.tv/$username"
    "https://www.twitch.tv/$usernams"
    "https://www.dribbble.com/$username"
    "https://www.stumbleupon.com/$username"
    "https://www.ello.co/$username"
    "https://www.producthunt.com/$usernams"
    "https://www.snapchat.com/$username"
    "https://www.telegram.me/$username"
    "https://www.weheartit.com/$username"
)

echo "Mencari informasi untuk username: $username"

for site in "${sites[@]}"; do
    response=$(curl -s -o /dev/null -w "%{http_code}" "$site")
    if [ $response -eq 200 ]; then
        echo "Ditemukan: $site"
    else
        echo "Tidak ditemukan: $site"
    fi
done
