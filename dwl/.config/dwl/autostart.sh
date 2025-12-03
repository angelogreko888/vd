pgrep pipewire > /dev/null && pkill pipewire
pipewire &
waybar &
nm-applet &
foot &
pgrep swaybg > /dev/null || swaybg -m fit -i ~/.config/backgrounds/sunparth.jpg 
