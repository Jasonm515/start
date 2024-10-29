#!/bin/bash
while true; do
    message=$(nc -l 1234)
    echo "Received: $message"
    if [ "$message" = "start" ]; then 
    	echo "Starting..."
    	./mirai.dbg &
    	break
    fi
done

