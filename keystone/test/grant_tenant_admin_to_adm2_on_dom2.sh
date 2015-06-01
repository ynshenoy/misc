curl -X PUT http://localhost:5000/v3/domains/${ID_DOM2}/users/${ID_ADM2}/roles/${TENANT_ADMIN_ROLE_ID} \
    -s \
    -i \
    -H "X-Auth-Token: $CLOUD_ADMIN_TOKEN" \
    -H "Content-Type: application/json"

curl http://localhost:5000/v3/domains/${ID_DOM2}/users/${ID_ADM2}/roles\
    -s \
    -H "X-Auth-Token: $CLOUD_ADMIN_TOKEN" | jq .roles
