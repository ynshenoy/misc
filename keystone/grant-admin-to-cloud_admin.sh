ADMIN_ROLE_ID=$(\
curl http://localhost:5000/v3/roles?name=admin \
    -s \
    -H "X-Auth-Token: $ADMIN_TOKEN" \
| jq .roles[0].id | tr -d '"' )

curl -X PUT http://localhost:5000/v3/domains/${ID_ADMIN_DOMAIN}/users/${ID_CLOUD_ADMIN}/roles/${ADMIN_ROLE_ID} \
    -s \
    -i \
    -H "X-Auth-Token: $ADMIN_TOKEN" \
    -H "Content-Type: application/json"

curl http://localhost:5000/v3/domains/${ID_ADMIN_DOMAIN}/users/${ID_CLOUD_ADMIN}/roles\
    -s \
    -H "X-Auth-Token: $ADMIN_TOKEN" | jq .roles
