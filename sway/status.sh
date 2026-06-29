#---------------------------------------
# NOT BEING USED NOW: REPLACED BY WAYBAR
# ---------------------------------------


#!/usr/bin/env bash
echo '{"version":1,"click_events":false}'
echo '['
echo '[],'

declare -A STATUS

print_status() {
    local json="["
    local first=true
    for key in datetime volume wifi battery; do
        [ "$first" = true ] && first=false || json+=","
        json+="${STATUS[$key]}"
    done
    json+="]"
    echo "$json,"
}

update_datetime() {
    STATUS[datetime]="$(date '+%Y-%m-%d %H:%M:%S' | awk '{print "{\"full_text\":\""$0"\",\"name\":\"datetime\",\"markup\":\"none\",\"align\":\"center\"}"}')"
}

update_volume() {
    local VOL MUTE ICON
    VOL=$(pactl get-sink-volume @DEFAULT_SINK@ | awk '{print $5}' | head -n1)
    MUTE=$(pactl get-sink-mute @DEFAULT_SINK@ | awk '{print $2}')
    ICON=""
    [ "$MUTE" = "yes" ] && ICON=""
    STATUS[volume]="{\"full_text\":\"$ICON $VOL\",\"name\":\"volume\",\"markup\":\"none\",\"align\":\"right\"}"
}

update_wifi() {
    local WIFI ICON
    WIFI=$(nmcli -t -f ACTIVE,SSID dev wifi | grep '^yes' | cut -d: -f2)
    [ -z "$WIFI" ] && WIFI="Disconnected"
    ICON=""
    [ "$WIFI" = "Disconnected" ] && ICON="󰖪"
    STATUS[wifi]="{\"full_text\":\"$ICON $WIFI\",\"name\":\"wifi\",\"markup\":\"none\",\"align\":\"right\"}"
}

update_battery() {
    local ICON PERC
    if [ -d /sys/class/power_supply/BAT1 ]; then
        PERC=$(< /sys/class/power_supply/BAT1/capacity)
        CHARGING=$(< /sys/class/power_supply/BAT1/status)
        ICON=""
        [ "$CHARGING" = "Charging" ] && ICON="⚡"
        STATUS[battery]="{\"full_text\":\"$ICON $PERC%\",\"name\":\"battery\",\"markup\":\"none\",\"align\":\"right\"}"
    else
        STATUS[battery]="{\"full_text\":\"AC\",\"name\":\"battery\",\"markup\":\"none\",\"align\":\"right\"}"
    fi
}

# ----------------------
# Initial update
# ----------------------
update_volume
update_wifi
update_battery
update_datetime
print_status

# ----------------------
# Event listeners
# ----------------------
# Volume updates (event-driven)
pactl subscribe | while read -r line; do
    if echo "$line" | grep -q sink; then
        update_volume
        print_status
    fi
done &

# Wi-Fi updates (event-driven)
nmcli monitor | while read -r _; do
    update_wifi
    print_status
done &

# Battery & datetime updates (polling only)
while :; do
    update_battery
    update_datetime
    print_status
    sleep 1
done
