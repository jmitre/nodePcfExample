#a='{  "ID": '
#b=\"${ID}\"
#c='  ,  "Name": '
#d=\"${NAME}\"
#e=' ,  "api": "127.0.0.1",  "Port": 8080,  "Check": {    "Interval": "10s",    "TTL": "15s"  }}'
#f=$a$b$c$d$e

curl 10.144.138.220:8500/v1/agent/service/register -H 'Content-Type: application/json' -X PUT -d '{  "ID": '\"${ID}\"'  ,  "Name": '\"${NAME}\"' ,  "api": "127.0.0.1",  "Port": 8080,  "Check": {    "Interval": "10s",    "TTL": "15s"  }}'

curl 10.144.138.220:3000/$HELLO
curl 10.144.138.220:3000/$HELLO
curl 10.144.138.220:3000/$HELLO
curl 10.144.138.220:3000/$HELLO
