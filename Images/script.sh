#!/bin/bash

for i in $(seq -w 1 19); do
    old="IMG-20260807-WA$(printf '%04d' "$((10#$i))").jpg"
    new="IMG-$(printf '%02d' "$((10#$i))").jpg"

    if [[ -f "$old" ]]; then
        mv -- "$old" "$new"
        echo "Renamed: $old -> $new"
    else
        echo "Missing: $old"
    fi
done
