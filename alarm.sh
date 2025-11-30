#!/bin/bash

echo "Alarm time? (HH:MM or H:M)"
read target

th=$(printf "%02d" "$(echo "$target" | awk -F: '{print $1}')")
tm=$(printf "%02d" "$(echo "$target" | awk -F: '{print $2}')")

if ! [[ $th =~ ^[0-9][0-9]$ && $tm =~ ^[0-9][0-9]$ && $th -ge 0 && $th -le 23 && $tm -ge 0 && $tm -le 59 ]]; then
  echo "Invalid time format."
  exit 1
fi

while :; do
  now=$(date +%H:%M)
  echo "Alarm clock at $th:$tm. Now it's $now"
  if [[ "$now" == "$th:$tm" ]]; then
    break
  fi
  sleep 1
  clear
done

echo -e "\nWake up!"
./buzzer.sh &
bpid=$!
disown $bpid # eliminates termination message
