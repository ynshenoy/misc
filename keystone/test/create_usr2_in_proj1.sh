ID_USR2=$(\
curl https://identity.jiocloud.com:5000/v3/users \
    -s \
    -H "X-Auth-Token: $ADM1_TOKEN" \
    -H "Content-Type: application/json" \
    -d "
{
    \"user\": {
        \"default_project_id\": \"$ID_PRJ1\",
        \"description\": \"Just a user of dom1\",
        \"domain_id\": \"$ID_DOM1\",
        \"enabled\": true,
        \"name\": \"usr2\",
        \"password\": \"password\"
    }
}" | jq .user.id | tr -d '"' )

echo "ID of user usr2: $ID_USR2"
