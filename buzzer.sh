#!/bin/bash

# disconnect Bluetooth Headphones
#bluetoothctl disconnect

# Unmute the volume
#amixer sset 'Master' unmute
# Set volume to 80%
#amixer sset 'Master' 100%

# Buzzer script for alarm.sh

# Launch Firefox with Deutshlandfunk livestream
#firefox https://st01.sslstream.dlf.de/dlf/01/128/mp3/stream.mp3?aggregator=web
ffplay -fs https://st01.sslstream.dlf.de/dlf/01/128/mp3/stream.mp3?aggregator=web
