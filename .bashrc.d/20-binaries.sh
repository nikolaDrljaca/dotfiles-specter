# Local binaries
export PATH="$PATH:/home/nikola/.local/bin"
# Local scripts
export PATH="$PATH:$HOME/.local/scripts/"

# CUSTOM
power() {
    cat /sys/class/power_supply/BAT1/current_now /sys/class/power_supply/BAT1/voltage_now | xargs | awk '{print $1*$2/1e12 " W"}'
}

