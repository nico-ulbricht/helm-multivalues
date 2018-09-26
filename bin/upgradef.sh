#!/bin/bash

ARGS=""
NEXT=False

for i; do
    if [ $NEXT == True ]
    then
        if [ -d $i ]
        then
            for PATH in $i/*.yaml
            do
                ARGS="$ARGS -f $PATH"
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

# TODO: Fix $HELM_BIN not working
/usr/local/bin/helm upgrade $ARGS