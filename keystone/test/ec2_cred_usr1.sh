curl -H "X-Auth-Token: $ADM1_TOKEN" https://identity.jiocloud.com:5000/v3/credentials \
-H "Content-Type: application/json" \
-d \
'{
   "credential": {
        "blob": "{\"access\": \"db08257e1acb44ac8220b88d5c8120a5\", \"secret\": \"7ad73c61870148d8b10c1dff1df18f71\"}",
        "type": "ec2",
        "user_id": "7d663087f5634029b8dbed71443e4883",
        "project_id": "cc58effed4ed446492cf2b5dcb84bdbc"
    }
 }'
