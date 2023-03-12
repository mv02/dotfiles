#!/bin/bash
updates=$(checkupdates)
if [ ! "$updates" ]; then exit 1; fi
echo "$updates" | wc -l
