ID_CLOUD_ADMIN=$(\
curl http://localhost:5000/v3/users \
    -s \
    -H "X-Auth-Token: $ADMIN_TOKEN" \
    -H "Content-Type: application/json" \
    -d "
{
    \"user\": {
        \"description\": \"Cloud administrator\",
        \"domain_id\": \"$ID_ADMIN_DOMAIN\",
        \"enabled\": true,
        \"name\": \"cloud_admin\",
        \"password\": \"password\"
    }
}" | jq .user.id | tr -d '"' )
