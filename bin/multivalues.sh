#!/bin/bash

ARGS=""
NEXT=False

for i; do
    if [ $NEXT == True ]
    then
        if [ -d $i ]
        then
            for YAML_FOLDER in $i/*.yaml
            do
                ARGS="$ARGS -f $YAML_FOLDER"
                NEXT=False
            done
            continue
        else
            ARGS="$ARGS -f $i"
            NEXT=False
            continue
        fi
    fi

    if [ $i == "-f" -o $i == "--file" -o $i == "--values" ]
    then
        NEXT=True
    else
        ARGS="$ARGS $i"
    fi
done

$HELM_BIN $ARGS
