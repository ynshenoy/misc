curl -H "X-Auth-Token: $ADM1_TOKEN" https://identity.jiocloud.com:5000/v3/credentials \
-H "Content-Type: application/json" \
-d \
'{
   "credential": {
        "blob": "{\"access\": \"37d274cb529441ddad7432e92a4f5085\", \"secret\": \"15f0448e416c4a6998951480804eb051\"}",
        "type": "ec2",
        "user_id": "$ID_ADM1",
        "project_id": "$ID_PRJ1"
    }
 }'
0b887fd9f82f48339cff8aece3a8826a
cc58effed4ed446492cf2b5dcb84bdbc
