MEMBER_ROLE_ID=$(\
curl https://identity.jiocloud.com:5000/v3/roles?name=Member \
    -s \
    -H "X-Auth-Token: $ADM1_TOKEN" \
| jq .roles[0].id | tr -d '"' )

curl -X PUT https://identity.jiocloud.com:5000/v3/projects/${ID_PRJ2}/users/${ID_USR3}/roles/${MEMBER_ROLE_ID} \
    -s \
    -i \
    -H "X-Auth-Token: $ADM1_TOKEN" \
    -H "Content-Type: application/json"

curl https://identity.jiocloud.com:5000/v3/projects/${ID_PRJ2}/users/${ID_USR3}/roles \
    -s \
    -H "X-Auth-Token: $ADM1_TOKEN" | jq .roles
