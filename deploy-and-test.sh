#!/bin/bash
pkill --signal 1 --full firefox
git status
git commit --all --no-edit --amend
git push -f
sleep 2
firefox -purgecaches --new-intance -P nanooq-wa --private-window https://world.chaosflux.de/_/global/nanooq.github.io/wa-2021-01-26/project/maps/main.json &
# https://play.workadventu.re/_/global/nanooq.github.io/wa-2021-01-26/project/maps/main.json
xdotool search --sync --onlyvisible --class "Firefox" windowactivate key F11 &
