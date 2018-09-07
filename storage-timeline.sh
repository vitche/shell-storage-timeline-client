#!/usr/bin/env bash

case $2 in
addString)
    echo "Executing TimeLine.addString"
    wget "$1/timeline/add/string" --no-check-certificate --post-data "schema=$3&timeLine=$4&value=$5"
    ;;
addNumber)
    echo "Executing TimeLine.addNumber"
    ;;
allStrings)
    echo "Executing TimeLine.allStrings"
    ;;
allNumbers)
    echo "Executing TimeLine.allNumbers"
    ;;
schemaCreate)
    echo "Executing Schema.create"
    ;;
*)
    echo "Unable to execute unknown command $2"
    ;;
esac