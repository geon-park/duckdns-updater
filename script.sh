#!/bin/sh

result=$(echo url="https://www.duckdns.org/update?domains=$domains&token=$token&ip=" | curl -s -k -K -)
if [ $result != "OK" ]
then
    echo "$date - Failed($result)" > /var/log/result.log
fi
