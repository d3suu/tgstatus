# tgstatus
Telegram API response time graphs

## Installation
 - Clone repository
 - Copy `html/index.html` to for ex. `/var/www/tgstatus/`
 - Configure nginx to host tgstatus subdomain (see "Nginx configuration" below)
 - Change directories and bot key in `load.sh`
 - Concatenate new rule `* * * * * /home/user/tgstatus/load.sh` in crontab
 - Cheer. Every point in this list starts with `C`, that's funny

## Nginx configuration
```
# /etc/nginx/sites-enabled/Your-site
server {
	listen 80;
	server_name tgstatus.yoursite;
	root /var/www/tgstatus;
}
```

