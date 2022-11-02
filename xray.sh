#!/bin/sh
if [ ! -f UUID ]; then
  UUID="e4caa4c3-ba65-40f3-8048-09f4eb7ad6e7"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

