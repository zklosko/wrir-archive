#!/bin/bash

# Cleaning files in raw
sTempDays=1
echo Starting $0 $(date)

find /srv/recorder/raw/* -ctime +${sTempDays} -delete

# Cleaning files in publish a.k.a. files.wrir.org/shows
sArcDays=14

find /srv/static/shows/* ! -name '*.html' -mtime +${sArcDays} -delete