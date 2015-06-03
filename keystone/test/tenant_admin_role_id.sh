TENANT_ADMIN_ROLE_ID=$(\
curl https://identity.jiocloud.com:5000/v3/roles?name=tenant_admin \
    -s \
    -H "X-Auth-Token: $CLOUD_ADMIN_TOKEN" \
| jq .roles[0].id | tr -d '"' )
