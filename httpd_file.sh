FILE=/etc/httpd/conf/httpd.conf
httpd -v | grep -i "server version" | awk -F '/' '{print $2}'
PORT=`cat $FILE | grep ^Listen | awk -F ' ' '{print $2}'`
echo "HTTPD_PORT = $PORT"
