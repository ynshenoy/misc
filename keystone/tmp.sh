ID_TENANT_ADMIN_ROLE=$(\
curl http://localhost:5000/v3/roles \
    -s \
    -H "X-Auth-Token: $ADMIN_TOKEN" \
    -H "Content-Type: application/json" \
    -d '
{
    "role": {
        "name": "foo"
    }
}' | jq .role.id | tr -d '"' )

echo "ID of domain cloud: $ID_TENANT_ADMIN_ROLE"
