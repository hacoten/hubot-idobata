#!/bin/bash
# idobata
export HUBOT_IDOBATA_API_TOKEN={IDOBATA_API_KEY}

# forever (daemon hubot)
case $1 in
    "start" | "stop" | "restart" )
       forever $1 \
           -l /var/log/hubot.log -a \
           -c coffee node_modules/.bin/hubot --adapter idobata --name hubot
    ;;
    * ) echo "usage: hubot.sh start|stop|retart" ;;
esac
