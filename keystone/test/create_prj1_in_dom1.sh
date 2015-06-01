ID_PRJ1=$(\
curl http://localhost:5000/v3/projects \
    -s \
    -H "X-Auth-Token: $ADM1_TOKEN" \
    -H "Content-Type: application/json" \
    -d "
{
    \"project\": {
        \"enabled\": true,
        \"domain_id\": \"$ID_DOM1\",
        \"name\": \"prj1\"
    }\
}" | jq .project.id | tr -d '"' )

echo "ID of prj1: $ID_PRJ1"
