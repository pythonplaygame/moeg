#!/bin/sh
if [ ! -f UUID ]; then
  UUID="7f09889d-c4cf-4d49-8bad-ef5931074f6b"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

