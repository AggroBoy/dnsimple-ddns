#!/bin/bash

# Read config
. /etc/ddnsrc


while true; do
    IP=`curl -s http://myip.shadowrealm.org`

    if [[ "$?" = "0" && "$OLDIP" != "$IP" && "$IP" != "" && "$IP" ]]; then
        echo New public IP address detected: $IP

        curl -H "Authorization: Bearer $TOKEN" \
            -H "Content-Type: application/json" \
            -H "Accept: application/json" \
            -X "PATCH" \
            -Ss \
            "https://api.dnsimple.com/v2/$ACCOUNT_ID/zones/$ZONE_ID/records/$RECORD_ID" \
            -d "{\"content\":\"$IP\"}" > /dev/null
    fi

    OLDIP=$IP

    sleep 60
done

