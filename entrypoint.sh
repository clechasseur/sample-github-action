#!/bin/sh -l
echo "Running the action"
echo "Here is the payload of the event:"
cat $GITHUB_EVENT_PATH
curl -X POST -H 'Content-type: application/json' --data '{"text":"Hello, World! - from clechasseur"}' $1
