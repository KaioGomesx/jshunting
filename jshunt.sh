#!/bin/env bash

domain=$1
logfile=out.txt
workdir="$domain/$logfile"

mkdir $domain

waybackurls $domain | grep -iE '\.js' | egrep -ivE '(\.jsp|\.json)' | anew $workdir > /dev/null
gau $domain | grep -iE '\.js' | egrep -ivE '(\.jsp|\.json)' | anew $workdir > /dev/null

