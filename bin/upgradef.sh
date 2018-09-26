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
        fi
    fi

    if [ $i == "-f" -o $i == "--file" ]
    then
        NEXT=True
    else
        ARGS="$ARGS $i"
    fi
done

$HELM_BIN upgrade $ARGS