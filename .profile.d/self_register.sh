name=$(echo ${VCAP_APPLICATION} | python -c 'import json,sys;obj=json.load(sys.stdin);print obj["application_name"]')
id= echo ${VCAP_APPLICATION} | python -c 'import json,sys;obj=json.load(sys.stdin);print obj["application_id"]'
uris= echo ${VCAP_APPLICATION} | python -c 'import json,sys;obj=json.load(sys.stdin);print obj["application_uris"]'
echo "THE NAME IS:"$name
echo $id
echo $uris
echo '############################################################################################'
echo 'VCAP:'${VCAP_APPLICATION}
echo '------------------------------------------------------------------------------------------------'

# curl 10.143.81.111:8500/v1/agent/service/register -H 'Content-Type: application/json' -X PUT -d '{  "ID": '\"${id}\"'  ,  "Name": '\"${name}\"' , "Address": '\"${uris}\"' ,  "Port": 8080,  "Check": {"name": "Health Check", "HTTP": '\"${uris}'/health'\"', "Interval": "10s" }}'

curl 10.143.81.111:8500/v1/agent/service/register -H 'Content-Type: application/json' -X PUT -d '{  "Name": '\"${name}\"'}'

echo '############################################################################################'
