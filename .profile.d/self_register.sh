

curl 10.144.138.220:8500/v1/agent/service/register -H 'Content-Type: application/json' -X PUT -d '{  "ID": '\"${APPLICATION_ID}\"'  ,  "Name": '\"${APPLICATION_NAME}\"' , "Address": '\"${APPLICATION_URIS}\"' ,  "Port": 8080,  "Check": {"name": "Health Check", "HTTP": '\"${APPLICATION_URIS}\""/health"', "Interval": "10s" }}'
