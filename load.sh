#!/bin/bash

bot_key="YOUR BOT KEY HERE"

curdate=$(date +%s)

tgtime=$(curl -w "%{time_namelookup},%{time_connect},%{time_appconnect},%{time_pretransfer},%{time_redirect},%{time_starttransfer}\n" -o /dev/null -s https://api.telegram.org/bot${bot_key}/getUpdates)

echo "${curdate},${tgtime}" >>/root/telegram_time/data.log

tail -n 60 /root/telegram_time/data.log >/root/telegram_time/1h.log

# Change this to wherever You cloned this code
cd /home/user/tgstatus/
gnuplot data.plot
mv data.png /var/www/tgstatus/data.png
gnuplot 1h.plot
mv 1h.png /var/www/tgstatus/1h.png

