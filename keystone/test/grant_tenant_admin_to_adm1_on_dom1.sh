curl -X PUT https://identity.jiocloud.com:5000/v3/domains/${ID_DOM1}/users/${ID_ADM1}/roles/${TENANT_ADMIN_ROLE_ID} \
    -s \
    -i \
    -H "X-Auth-Token: $CLOUD_ADMIN_TOKEN" \
    -H "Content-Type: application/json"

curl https://identity.jiocloud.com:5000/v3/domains/${ID_DOM1}/users/${ID_ADM1}/roles\
    -s \
    -H "X-Auth-Token: $CLOUD_ADMIN_TOKEN" | jq .roles
