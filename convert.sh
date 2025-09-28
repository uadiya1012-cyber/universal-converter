#!/bin/bash

# Аргументын тоо зөв эсэхийг шалгах
if [ "$#" -ne 2 ]; then
    echo "Ашиглах заавар: ./convert.sh [тоо] [хөрвүүлэх систем: 2, 8, эсвэл 16]"
    exit 1
fi

NUMBER=$1
BASE=$2

if [ "$BASE" -eq 2 ]; then
    RESULT=$(echo "obase=2; $NUMBER" | bc)
    echo "$NUMBER (10-т) = $RESULT (2-т)"
elif [ "$BASE" -eq 8 ]; then
    RESULT=$(echo "obase=8; $NUMBER" | bc)
    echo "$NUMBER (10-т) = $RESULT (8-т)"
elif [ "$BASE" -eq 16 ]; then
    RESULT=$(echo "obase=16; $NUMBER" | bc)
    echo "$NUMBER (10-т) = $RESULT (16-т)"
else
    echo "Алдаа: Зөвхөн 2, 8, 16-тын систем рүү хөрвүүлнэ."
fi

