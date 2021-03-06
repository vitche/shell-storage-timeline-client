#!/usr/bin/env bash
case $1 in
install)
    if [ -f /usr/bin/storage-timeline.sh ]; then
        rm /usr/bin/storage-timeline.sh
    fi
    wget https://raw.githubusercontent.com/vitche/shell-storage-timeline-client/master/storage-timeline.sh -O- > /usr/bin/storage-timeline.sh
    chmod +x /usr/bin/storage-timeline.sh
    exit 0
    ;;
*)
    case $2 in
    addString)
        echo "Executing TimeLine.addString"
        wget "$1/timeline/add/string" --no-check-certificate --post-data "schema=$3&timeLine=$4&value=$5" -O-
        ;;
    addNumber)
        echo "Executing TimeLine.addNumber"
        wget "$1/timeline/add/number" --no-check-certificate --post-data "schema=$3&timeLine=$4&value=$5" -O-
        ;;
    allStrings)
        echo "Executing TimeLine.allStrings"
        wget "$1/timeline/all/strings?schema=$3&timeLine=$4" --no-check-certificate -O-
        ;;
    allNumbers)
        echo "Executing TimeLine.allNumbers"
        wget "$1/timeline/all/numbers?schema=$3&timeLine=$4" --no-check-certificate -O-
        ;;
    schemaCreate)
        echo "Executing Schema.create"
        wget "$1/schema/create" --no-check-certificate --post-data "schema=$3&timeLine=$4" -O-
        ;;
    *)
        echo "Unable to execute unknown command $2"
        ;;
    esac
    ;;
esac
