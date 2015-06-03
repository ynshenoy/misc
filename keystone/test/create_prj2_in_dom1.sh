ID_PRJ2=$(\
curl https://identity.jiocloud.com:5000/v3/projects \
    -s \
    -H "X-Auth-Token: $ADM1_TOKEN" \
    -H "Content-Type: application/json" \
    -d "
{
    \"project\": {
        \"enabled\": true,
        \"domain_id\": \"$ID_DOM1\",
        \"name\": \"prj2\"
    }\
}" | jq .project.id | tr -d '"' )

echo "ID of prj2: $ID_PRJ2"
