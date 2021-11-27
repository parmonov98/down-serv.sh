SERVICE_NGINX="nginx"
if pgrep -x "$SERVICE_NGINX" >/dev/null
then
    echo "$SERVICE_NGINX stopping"
    sudo service  nginx stop
else
    echo "$SERVICE_NGINX already stopped"
fi
SERVICE_MYSQL="mysqld"
if pgrep -x "$SERVICE_MYSQL" >/dev/null
then
    echo "$SERVICE_MYSQL stopping"
    sudo service  mysql stop
else
    echo "$SERVICE_MYSQL already stopped"
fi
echo "all stopped"
