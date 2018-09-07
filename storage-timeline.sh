#!/usr/bin/env bash

case $1 in
install)
    # cp $0 /usr/bin
    echo $0
    echo $1
    echo $2
    exit 0
esac

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
    ;;
*)
    echo "Unable to execute unknown command $2"
    ;;
esac