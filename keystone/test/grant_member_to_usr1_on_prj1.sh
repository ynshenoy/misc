MEMBER_ROLE_ID=$(\
curl http://localhost:5000/v3/roles?name=Member \
    -s \
    -H "X-Auth-Token: $ADM1_TOKEN" \
| jq .roles[0].id | tr -d '"' )

curl -X PUT http://localhost:5000/v3/projects/${ID_PRJ1}/users/${ID_USR1}/roles/${MEMBER_ROLE_ID} \
    -s \
    -i \
    -H "X-Auth-Token: $ADM1_TOKEN" \
    -H "Content-Type: application/json"

curl http://localhost:5000/v3/projects/${ID_PRJ1}/users/${ID_USR1}/roles \
    -s \
    -H "X-Auth-Token: $ADM1_TOKEN" | jq .roles
