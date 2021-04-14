#!/bin/sh -l
echo "Running the action"
echo "Here is the payload of the event:"
cat $GITHUB_EVENT_PATH
output_send_message=$(curl -X POST -H 'Content-type: application/json' --data '{"text":"Hello, World! from clechasseur"}' $1)
if [[ "$output_send_message" == "ok" ]]; then
  echo "Notification sent properly"
  output=0
else
  echo "Error while sending notification"
  output=1
fi
(exit $output)
