#!/bin/sh

## Simple script to return basic weather info
## Change url below to match desired city
URL='https://www.accuweather.com/en/us/clemson-sc/29631/weather-forecast/335501'

#wget -q -O- "$URL" | awk -F\" '/acm_RecentLocationsCarousel\.push/{print $2"\n"$4"\n"}' | head -2
wget -q -O- "$URL" | awk -F\" '/acm_RecentLocationsCarousel\.push/{print $4"\n"}' | head -1
wget -q -O- "$URL" | awk -F\' '/acm_RecentLocationsCarousel\.push/{print $10"°"}' | head -1
