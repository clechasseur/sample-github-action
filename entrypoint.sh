#!/bin/sh -l
echo "Running the action"
echo "Here is the payload of the event:"
cat $GITHUB_EVENT_PATH
