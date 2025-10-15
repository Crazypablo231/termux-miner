#!/bin/bash

set -e
# Replace changeme with your values. Check out readme for more.
POOL="xmr-us-east1.nanopool.org"
PORT=10343
MYADDRESS="46h8kaRsNAEBUN9x8i95iA5CjoJpgNXRzF3btMsCH7B9TfiXFQU783sGiygfyt2mqRbrJBJaCUxucQp4bgP531jpM1J755D"
COINNAME="monero"

cd xmrig/build

# executable permissions
echo "Setting executable permissions"
if ! chmod +x xmrig; then
    echo "Error: Failed to set executable permissions"
    exit 1
fi

echo "Starting now"
./xmrig -o $POOL:$PORT -u $MYADDRESS --tls --coin $COINNAME
