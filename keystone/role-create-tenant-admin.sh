ID_TENANT_ADMIN_ROLE=$(\
curl https://identity.jiocloud.com:5000/v3/roles \
    -s \
    -H "X-Auth-Token: $ADMIN_TOKEN" \
    -H "Content-Type: application/json" \
    -d '
{
    "role": {
        "name": "tenant_admin"
    }
}' | jq .role.id | tr -d '"' )

echo "ID of tenant admin role: $ID_TENANT_ADMIN_ROLE"
