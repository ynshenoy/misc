ID_ADM2=$(\
curl https://identity.jiocloud.com:5000/v3/users \
    -s \
    -H "X-Auth-Token: $CLOUD_ADMIN_TOKEN" \
    -H "Content-Type: application/json" \
    -d "
{
    \"user\": {
        \"description\": \"Administrator of domain dom1\",
        \"domain_id\": \"$ID_DOM2\",
        \"enabled\": true,
        \"name\": \"adm2\",
        \"password\": \"password\"
    }
}" | jq .user.id | tr -d '"')

echo "ID of user adm2: $ID_ADM2"
