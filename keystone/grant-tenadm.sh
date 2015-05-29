curl -X PUT http://localhost:5000/v3/domains/${ID_DOM1}/users/${ID_ADM1}/roles/${ID_TENANT_ADMIN_ROLE} \
    -s \
    -i \
    -H "X-Auth-Token: $CLOUD_ADMIN_TOKEN" \
    -H "Content-Type: application/json"

curl http://localhost:5000/v3/domains/${ID_DOM1}/users/${ID_ADM1}/roles \
    -s \
    -H "X-Auth-Token: $CLOUD_ADMIN_TOKEN" | jq .roles
